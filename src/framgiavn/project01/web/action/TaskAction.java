package framgiavn.project01.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import framgiavn.project01.web.business.LessonBusiness;
import framgiavn.project01.web.model.Lesson;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;

public class TaskAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;

	// private Logit2 log = Logit2.getInstance(UserAction.class);
	@SuppressWarnings({ "unused", "rawtypes" })
  private SessionMap session;
	private LessonBusiness lessonBusiness = null;
	private List<Lesson> lesson = null;

	public void setLessonBusiness(LessonBusiness lessonBusiness) {
		this.lessonBusiness = lessonBusiness;
	}

	public List<Lesson> getLesson() {
		return lesson;
	}

	public void setLesson(List<Lesson> lesson) {
		this.lesson = lesson;
	}

	public String showLesson() {
		try {
			lesson = lessonBusiness.showLesson();
			System.out.print(lesson.size());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String logout() {
		@SuppressWarnings("rawtypes")
    Map session = ActionContext.getContext().getSession();
		session.remove("loginId");
		session.remove("username");
		session.remove("image");
		session.remove("create_at");
		session.remove("update_at");
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub

	}

}
