package framgiavn.project01.web.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import framgiavn.project01.web.dao.LessonDAO;
import framgiavn.project01.web.model.Lesson;
import framgiavn.project01.web.ulti.Logit2;

public class LessonDAOImpl extends GenericDAOImpl<Lesson, Integer> implements LessonDAO {
	public LessonDAOImpl() {
		super(Lesson.class);
		// TODO Auto-generated constructor stub
	}
private static final Logit2 log = Logit2.getInstance(LessonDAOImpl.class);
	public static final String NAME = "lesson";

	protected void initDAO() {
		// Do nothing
	}

}
