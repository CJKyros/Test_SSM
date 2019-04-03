package contact.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/")
public class PeopleMappers {

    @Autowired
    private PeopleMapper peopleMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String selAll(Model model) {
        List<People> peoples = peopleMapper.selectAll();
        model.addAttribute("peoples", peoples);
        return "index";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String insertPeople(People people) {

        peopleMapper.insert(people);
        return "redirect:/";
    }


    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delete(int id) {
        peopleMapper.deleteByPrimaryKey(id);
        return "redirect:/";
    }

   @RequestMapping(value = "/update", method = RequestMethod.GET)
    //@ResponseBody   //加ResponseBody这个注解的话，会在另一个页面输出return的东西
    public String update(int id, Model model) {
       People people = peopleMapper.selectByPrimaryKey(id);
       model.addAttribute("sss", people);
        return "update";
    }

    @RequestMapping(value = "/updateaa", method = RequestMethod.POST)
    public String updatess(People people) {
        peopleMapper.updateByPrimaryKey(people);
        return "redirect:/";
    }
}
