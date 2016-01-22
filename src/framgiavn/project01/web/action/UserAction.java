package framgiavn.project01.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import framgiavn.project01.web.business.LessonBusiness;
import framgiavn.project01.web.business.UserBusiness;
import framgiavn.project01.web.model.Lesson;
import framgiavn.project01.web.model.User;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;

public class UserAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// private Logit2 log = Logit2.getInstance(UserAction.class);

	private UserBusiness userBusiness = null;
	private User user = null;
	private Map session;
	private LessonBusiness lessonBusiness = null;
	private List<Lesson> lesson = null;

	public void setLessonBusiness(LessonBusiness lessonBusiness) {
		this.lessonBusiness = lessonBusiness;
	}

	public void setUserBusiness(UserBusiness userBusiness) {
		this.userBusiness = userBusiness;
	}
	public List<Lesson> getLesson() {
		return lesson;
	}

	public void setLesson(List<Lesson> lesson) {
		this.lesson = lesson;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String findByUserId() {
		try {
			user = userBusiness.findByUserId(user.getUser_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String findByUsername() {
		try {
			user = userBusiness.findByUsername(user.getUsername());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String checkLogin() {
		try {
			user = userBusiness.CheckLogin(user.getEmail(), user.getPassword());
			session.put("loginId", (String) user.getEmail());
			session.put("username", (String) user.getUsername());
			session.put("image", (String) user.getImage());
			session.put("create_at", user.getCreate_at());
			session.put("update_at", user.getUpdate_at());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String homePage() {
		
		try {
			lesson = lessonBusiness.showLesson();
			System.out.print(lesson.size());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}