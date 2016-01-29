package framgiavn.project01.web.dao.impl;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;

import framgiavn.project01.web.dao.UserDAO;
import framgiavn.project01.web.model.User;
import framgiavn.project01.web.ulti.Logit2;
import com.net.plugin.HibernateUtil;

public class UserDAOImpl extends GenericDAOImpl<User, Integer>
    implements UserDAO {

  public UserDAOImpl() {

    super(User.class);
  }

  private static final Logit2 log  = Logit2.getInstance(UserDAOImpl.class);
  public static final String  NAME = "customerName";

  protected void initDAO() {

    // Do nothing
  }

  public User findByUserId(Integer user_id, boolean lock) throws Exception {

    try {
      Query query = getSession().getNamedQuery("User.SelectUserByUserId");
      if (lock)
        query.setLockMode("User", LockMode.UPGRADE);
      query.setParameter("user_id", user_id);
      return (User) query.uniqueResult();
    } catch (RuntimeException re) {
      log.error("get failed", re);
      throw re;
    }
  }

  @Override
  public List<User> searchByUsername(String key) throws Exception {

    try {
      Query query = getSession().getNamedQuery("User.searchByUsername");
      query.setParameter("username", "%" + key + "%");
      return query.list();
    } catch (RuntimeException re) {
      throw re;
    }
  }

  @Override
  public User CheckLogin(String email, String password) throws Exception {

    try {
      Query query = getSession().getNamedQuery("User.CheckLogin");
      query.setParameter("email", email);
      query.setParameter("password", password);
      return (User) query.uniqueResult();
    } catch (RuntimeException re) {
      log.error("Get failed login", re);
      throw re;
    }
  }

  @Override
  public User checkAccountAvalible(User user) throws Exception {

    try {
      Query query = getSession().getNamedQuery("User.CheckAccountAvalible");
      query.setParameter("username", user.getUsername());
      query.setParameter("email", user.getEmail());
      return (User) query.uniqueResult();
    } catch (RuntimeException re) {
      log.error("Account is avalible");
      throw re;
    }
  }

  @Override
  public void changePassword(String username,String password) {

    try {
      Query query = getSession()
          .createQuery("update User set password = :password"
              + " where username = :username");
      query.setParameter("username", username);
      query.setParameter("password", password);
      int result = query.executeUpdate();
    } catch (RuntimeException re) {
      log.error("error changepassword");
      throw re;
    }
  }

}
