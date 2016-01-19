package framgiavn.project01.web.business;

import java.util.List;

import framgiavn.project01.web.dao.GenericDAO;
import framgiavn.project01.web.model.Lesson;

public interface LessonBusiness {
	public List<Lesson> showLesson() throws Exception;
}
