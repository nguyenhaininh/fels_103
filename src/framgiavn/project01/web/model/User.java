package framgiavn.project01.web.model;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int user_id;
	private String username;
	private String password;
	private String email;
	private String image;
	private String code;
	private int point;
	private Date create_at;
	private Date update_at;
	public Date getUpdate_at(){
		return update_at;
	}
	public void setUpdate_at(Date date){
		this.update_at=date;
	}
	public Date getCreate_at(){
		return create_at;
	}
	public void setCreate_at(Date date){
		this.create_at=date;
	}
	public int getPoint(){
		return point;
	}
	public void setPoint(int point){
		this.point = point;
	}
	public String getCode(){
		return code;
	}
	public void setCode(String code){
		this.code = code;
	}
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String avatar) {
		this.image = avatar;
	}
}