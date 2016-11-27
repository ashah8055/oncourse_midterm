package oncourse.web.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oncourse.model.Course;
import oncourse.model.GradeRecord;
import oncourse.model.User;
import oncourse.model.dao.CourseDao;
import oncourse.model.dao.GradeRecordDao;
import oncourse.security.SecurityUtils;

@Controller
public class GradeController {

    @Autowired
    private GradeRecordDao gradeRecordDao;

    @Autowired
    private CourseDao courseDao;
    
    @RequestMapping("/grade/list.html")
    public String list( ModelMap models )
    {
        User user = SecurityUtils.getUser();
        models.put( "user", user );
        models.put( "gradeRecords", gradeRecordDao.getGradeRecords( user ) );
        return "grade/list";
    }

    @RequestMapping(value="/grade/AddgradeView.html",method = RequestMethod.GET)
    public String addgrade( ModelMap models )
    {
    	 List<Course> course = courseDao.getCourses();
         models.put("course", course);
        
        models.put( "grade", new GradeRecord());
        
        return "grade/AddgradeView";
    }
    

    @RequestMapping(value="/grade/AddgradeView.html",method = RequestMethod.POST)
    public String addcourse(@ModelAttribute GradeRecord grade )
    {
     grade=gradeRecordDao.saveGradeRecord(grade);
     
    	return "redirect:list.html";
    }
     
}
