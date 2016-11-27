package oncourse.model.dao;

import java.util.List;

import oncourse.model.Grade;


public interface GradeDao {
	Grade getGrade( Long id );

    List<Grade> getGrades();

    Grade saveGrade( Grade grades );


}
