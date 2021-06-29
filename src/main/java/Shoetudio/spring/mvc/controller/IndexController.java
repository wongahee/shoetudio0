package Shoetudio.spring.mvc.controller;

import Shoetudio.spring.mvc.service.UserService;
import Shoetudio.spring.mvc.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {

    @Autowired private UserService usrv;

    @GetMapping("/")
    public String index(){
        return "index.tiles";
    }

    @PostMapping("/login")
    public String login(User u, HttpSession sess) {
        String returnPage = "redirect:/join/loginfail";

        if(usrv.checkLogin(u,sess))    // 로그인 성공 시
            returnPage = "redirect:/";

        return returnPage;
    }

    @GetMapping("/join/logout")
    public String logout(HttpSession sess){
        sess.invalidate();  // 세션객체 제거

        return "redirect:/";
    }

}