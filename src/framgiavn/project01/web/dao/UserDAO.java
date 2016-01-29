package framgiavn.project01.web.dao;

import java.util.List;

import framgiavn.project01.web.model.User;

public interface UserDAO extends GenericDAO<User, Integer> {
	
	public void changePassword(String username, String password) throws Exception;
	
	public List<User> searchByUsername(String key) throws Exception;
	
	public User CheckLogin(String username, String password) throws Exception;

	public User checkAccountAvalible(User user) throws Exception;
}