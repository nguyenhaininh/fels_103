package framgiavn.project01.web.business.impl;

import java.io.PrintStream;
import java.util.List;

import framgiavn.project01.web.business.LessonBusiness;
import framgiavn.project01.web.dao.LessonDAO;
import framgiavn.project01.web.model.Lesson;
import framgiavn.project01.web.ulti.Helpers;
import framgiavn.project01.web.ulti.Logit2;

public class LessonBusinessImpl implements LessonBusiness {
	private LessonDAO lessonDAO;
	private static final Logit2 log = Logit2.getInstance(LessonBusinessImpl.class);

	public LessonDAO getLessonDAO() {
		return lessonDAO;
	}

	public void setLessonDAO(LessonDAO lessonDAO) {
		this.lessonDAO = lessonDAO;
	}
	@Override
	public List<Lesson> showLesson() throws Exception {
		// TODO Auto-generated method stub
		try {
			return getLessonDAO().listAll();
		} catch (Exception e) {
			log.error(e);
			return null;
		}
	}

}
