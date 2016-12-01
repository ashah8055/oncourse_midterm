package oncourse.web.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import oncourse.model.Course;
import oncourse.model.Grade;
import oncourse.model.GradeRecord;
import oncourse.model.Term;
import oncourse.model.User;
import oncourse.model.dao.CourseDao;
import oncourse.model.dao.GradeDao;
import oncourse.model.dao.GradeRecordDao;
import oncourse.model.dao.UserDao;
import oncourse.security.SecurityUtils;

@Controller
public class GradeController {

    @Autowired
    private GradeRecordDao gradeRecordDao;

    @Autowired
    private GradeDao gradedao;
    
    @Autowired
    private CourseDao courseDao;
    
    @Autowired
    private UserDao userdao;
    
    @RequestMapping("/grade/list.html")
    public String list( ModelMap models)
    {
    /*	String username = session.getAttribute("username").toString();
    	
    	System.out.println("done "+username);*/
        User user = SecurityUtils.getUser();
        models.put( "user", user );
        models.put( "gradeRecords", gradeRecordDao.getGradeRecords( user ) );
        return "grade/list";
    }

    @RequestMapping(value="/grade/AddgradeView.html",method = RequestMethod.GET)
    public String addgrade( ModelMap models )
    {
    	 List<Course> course = courseDao.getCourses();
    	models.put("courses",course);        
    	models.put("course", new Course());        
        List<Grade> grade = gradedao.getGrades();
        models.put("grades",grade);        
    	
        return "grade/AddgradeView";
    }
    

    @RequestMapping(value="/grade/AddgradeView.html",method = RequestMethod.POST)
    public String addcourse(@ModelAttribute Course course,@RequestParam String year,@RequestParam String term)
    {
    	System.out.println(course.getCode() + " " +course.getName()+ " " + year + " " +term);
     
     GradeRecord graderecord = new GradeRecord();
     Term termObj = new Term(Integer.valueOf(year),term);
      
     Course courseObj = courseDao.getCourse(Long.valueOf(course.getCode()));
     Grade gradeObj = gradedao.getGrade(Long.valueOf(course.getName()));
     User studentObj = userdao.getUser(Long.valueOf(1000));
     System.out.println("fetched Code----"+ courseObj.getId());
     System.out.println("fetched Grade----"+ gradeObj.getId());
    System.out.println("Dao id>>>"+ courseObj.getName()); 
    System.out.println("Grade id "+ gradeObj.getSymbol());		
    	
        graderecord.setCourse(courseObj);
        graderecord.setGrade(gradeObj);
        graderecord.setTerm(termObj);
        graderecord.setStudent(studentObj);
        gradeRecordDao.saveGradeRecord(graderecord);
        
    	return "redirect:list.html";
    }
     
}
