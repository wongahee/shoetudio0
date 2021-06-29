package Shoetudio.spring.mvc.controller;

import Shoetudio.spring.mvc.service.ContactUsService;
import Shoetudio.spring.mvc.service.UserService;
import Shoetudio.spring.mvc.vo.ContactUs;
import Shoetudio.spring.mvc.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ContactUsController {

    @Autowired private ContactUsService asrv;
    @Autowired private UserService usrv;

    @GetMapping("/about")
    public String contactUs(){
        return "about.tiles";
    }

    @PostMapping("/about")
    public String contactUsok(ContactUs us){
        String returnPage = "redirect:/about";

        if(asrv.newContact(us))
            System.out.println("contactUs 데이터 추가완료");

        return returnPage;
    }

    // about login
    @PostMapping("/about/login")
    public String login(User u, HttpSession sess) {
        String returnPage = "redirect:/about/loginfail";

        if(usrv.checkLogin(u,sess))    // 로그인 성공 시
            returnPage = "redirect:/about";

        return returnPage;
    }

}