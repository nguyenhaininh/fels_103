package framgiavn.project01.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import framgiavn.project01.web.business.LessonBusiness;
import framgiavn.project01.web.business.UserBusiness;
import framgiavn.project01.web.model.Lesson;
import framgiavn.project01.web.model.User;
import framgiavn.project01.web.ulti.Constant;
import framgiavn.project01.web.ulti.Helpers;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;

public class UserAction extends ActionSupport {

  /**
   * 
   */
  private static final long   serialVersionUID = 1L;

  // private Logit2 log = Logit2.getInstance(UserAction.class);

  private UserBusiness        userBusiness     = null;
  private User                user             = null;
  private Integer             userId           = null;
  private Map<String, Object> session;
  private LessonBusiness      lessonBusiness   = null;
  private List<Lesson>        lesson           = null;
  private long                joineDay;

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

  public String signup() {

    if (userBusiness.checkAccountAvalible(user) == null) {

      try {
        userBusiness.signup(user);
      } catch (Exception e) {
        e.printStackTrace();
      }
      addActionMessage("Signup successfull! Please login");
      return SUCCESS;
    } else {
      addActionError("Username Or Email was avalible!");
      return ERROR;
    }

  }

  public String checkLogin() {

    try {
      user = userBusiness.CheckLogin(user.getEmail(), user.getPassword());
      session = ActionContext.getContext().getSession();// phai co de goi
      session.put("user_id", user.getUser_id());
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

  public String changePassword() {

    try {
      if (userBusiness.changePassword(user.getUsername(),
          user.getPassword()) == true)
        return SUCCESS;
    } catch (Exception e) {
      e.printStackTrace();
    }
    return ERROR;

  }

  public String showProfile() throws Exception {
    return SUCCESS;
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
