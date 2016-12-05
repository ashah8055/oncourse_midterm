package oncourse.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oncourse.model.User;
import oncourse.model.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userdao;
	
	
	  @RequestMapping(value="/signup.htm5l",method = RequestMethod.GET)
	    public String adduser(ModelMap models )
	    {
			  models.put("users", new User());
	         return "signup";
	    }
	   @RequestMapping(value="/signup.html",method = RequestMethod.POST)
	    public String adduserpost(@ModelAttribute User users,HttpSession session)
	    {
		   
		   System.out.println(users.getId());
		   userdao.saveUser(users);
		   return "redirect:login.html";
	         
	    }
	

}
