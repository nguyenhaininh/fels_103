package framgiavn.project01.web.business.impl;

import java.util.List;

import framgiavn.project01.web.business.UserBusiness;
import framgiavn.project01.web.dao.UserDAO;
import framgiavn.project01.web.model.User;
import framgiavn.project01.web.ulti.Helpers;
import framgiavn.project01.web.ulti.Logit2;

public class UserBusinessImpl implements UserBusiness {

  private static final Logit2 log = Logit2.getInstance(UserBusinessImpl.class);

  private UserDAO             userDAO;

  public UserDAO getUserDAO() {

    return userDAO;
  }

  public void setUserDAO(UserDAO userDAO) {

    this.userDAO = userDAO;
  }

  @Override
  public User findByUserId(Integer user_id) throws Exception {

    try {
      return getUserDAO().findById(user_id);
    } catch (Exception e) {
      e.printStackTrace();
      throw e;
    }
  }

  @Override
  public User findByUsername(String username) throws Exception {

    try {
      List<User> list = getUserDAO().findByProperty("username", username);
      return Helpers.isEmpty(list) ? null : list.get(0);
    } catch (Exception e) {
      log.error(e);
      return null;
    }
  }

  @Override
  public User findByEmail(String email) {

    try {
      List<User> list = getUserDAO().findByProperty("email", email);
      return Helpers.isEmpty(list) ? null : list.get(0);
    } catch (Exception e) {
      log.error(e);
      return null;
    }
  }

  @Override
  public boolean signup(User user) {

    try {
      getUserDAO().save(user);
      return true;
    } catch (Exception e) {
      log.error(e);
      return false;
    }
  }

  @Override
  public User CheckLogin(String username, String password) throws Exception {

    try {
      return getUserDAO().CheckLogin(username, password);
    } catch (Exception e) {
      e.printStackTrace();
      throw e;
    }
  }

  @Override
  public List<User> searchByUsername(String key) {

    try {
      return getUserDAO().searchByUsername(key);
    } catch (Exception e) {
      log.error(e);
      return null;
    }
  }

  @Override
  public User checkAccountAvalible(User user) {

    try {
      return getUserDAO().checkAccountAvalible(user);
    } catch (Exception e) {
      log.error(e);
      return null;
    }
  }

  @Override
  public boolean changePassword(String username, String password) {

    try {
      getUserDAO().changePassword(username,password);
      return true;
    } catch (Exception e) {
      log.error(e);
      return false;
    }
  }

}
