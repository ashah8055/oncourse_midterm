package oncourse.web.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import oncourse.model.Course;
import oncourse.model.User;
import oncourse.model.dao.CourseDao;

@Controller
public class CourseController {

    @Autowired
    private CourseDao courseDao;

  /*  @RequestMapping(method = RequestMethod.GET)   
    public void showResults(final HttpServletRequest request, Principal principal) {

        final String currentUser = principal.getName();
        
        System.out.println(currentUser);
		
    }   
*/    
    
    @RequestMapping("/course/list.html")
    public String list( ModelMap models )
    {
        models.put( "courses", courseDao.getCourses() );
        return "course/list";
    }
    
    @RequestMapping(value="/course/AddcourseView.html",method = RequestMethod.GET)
    public String addcourse( ModelMap models )
    {
        models.put( "course", new Course());
        return "course/AddcourseView";
    }
    

    @RequestMapping(value="/course/AddcourseView.html",method = RequestMethod.POST)
    public String addcourse(@ModelAttribute Course course )
    {
     course =courseDao.saveCourse(course);
     
    	return "redirect:list.html";
    }
    
    @RequestMapping(value="/course/EditcourseView.html",method = RequestMethod.GET)
    public String editcourse(@RequestParam Long id, ModelMap models )
    {
        models.put( "course", courseDao.getCourse(id));
        return "course/EditcourseView";
    }
    
    @RequestMapping(value="/course/EditcourseView.html",method = RequestMethod.POST)
    public String editcourse(@ModelAttribute Course course )
    {
     course =courseDao.saveCourse(course);
     
    	return "redirect:list.html";
    }
 
}
