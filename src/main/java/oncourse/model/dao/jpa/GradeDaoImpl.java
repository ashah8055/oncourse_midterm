package oncourse.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import oncourse.model.Grade;
import oncourse.model.dao.GradeDao;
@Repository
public class GradeDaoImpl implements GradeDao{
	 @PersistenceContext
	    private EntityManager entityManager;

	@Override
	public Grade getGrade(Long id) {
		return entityManager.find( Grade.class, id );}

	@Override
	public List<Grade> getGrades() {
		 String query = "from Grade where order by id";

	        return entityManager.createQuery( query, Grade.class ).getResultList();
	}

	@Override
	 @Transactional
	public Grade saveGrade(Grade grades) {
		return entityManager.merge( grades );	}

}
