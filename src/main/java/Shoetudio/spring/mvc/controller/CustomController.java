package Shoetudio.spring.mvc.controller;

import Shoetudio.spring.mvc.service.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CustomController {

    @Autowired private CustomService csrv;

    // list
    @GetMapping("/custom/list")
    public ModelAndView list(ModelAndView mv, String cp){
        if (cp == null) cp = "1";
        mv.setViewName("custom/list.tiles");
        mv.addObject("cus", csrv.readCustom(cp));

        return mv;
    }

    // view
    @GetMapping("/custom/view")
    public String view() {
        return "custom/view.tiles";
    }

    // custom
    @GetMapping("/custom/lEditDesign")
    public String customizel(){
        return "custom/lEditDesign.tiles";
    }
    @GetMapping("/custom/hEditDesign")
    public String customizeh(){
        return "custom/hEditDesign.tiles";
    }

}