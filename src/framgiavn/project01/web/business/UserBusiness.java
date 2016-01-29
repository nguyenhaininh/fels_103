package framgiavn.project01.web.business;

import java.util.List;
import framgiavn.project01.web.model.User;

public interface UserBusiness {

  public User findByUserId(Integer user_id) throws Exception;

  public User findByUsername(String username) throws Exception;

  public User CheckLogin(String username, String password) throws Exception;

  public User findByEmail(String email);

  public boolean signup(User user);

  public boolean changePassword(String username, String password);

  public List<User> searchByUsername(String key);

  public User checkAccountAvalible(User user);
}
