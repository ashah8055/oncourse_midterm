package oncourse.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import oncourse.model.Program;
import oncourse.model.dao.ProgramDao;

@Controller
public class ProgramController {

    @Autowired
    private ProgramDao programDao;

    @RequestMapping("/program/list.html")
    public String list( ModelMap models )
    {
        models.put( "programs", programDao.getPrograms() );
        return "program/list";
    }

    
    @RequestMapping(value="/program/ProgramView.html")
    public String editprogram(@RequestParam Long id, ModelMap models )
    {
        models.put( "prog",programDao.getProgram(id) );
        return "program/ProgramView";
    }
    
    /*@RequestMapping(value="/program/ProgramView.html",method = RequestMethod.POST)
    public String editprogram(@ModelAttribute Program progam_select )
    {
     
    	progam_select = programDao.saveProgram(progam_select);
    	return "redirect:list.html";
    }*/
}
