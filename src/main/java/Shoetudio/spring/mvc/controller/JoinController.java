package Shoetudio.spring.mvc.controller;

import Shoetudio.spring.mvc.service.UserService;
import Shoetudio.spring.mvc.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class JoinController {

    private UserService usrv;

    @Autowired
    public JoinController (UserService usrv) {
        this.usrv = usrv;
    }

    @GetMapping("/join/agree")
    public String agree() {
        return "join/agree.tiles";
    }

    @GetMapping("/join/joinme")
    public String joinme() {
        return "join/joinme.tiles";
    }

    @PostMapping("/join/joinok")
    public String joinok(User u, HttpServletRequest req) {

        usrv.newUser(u);

        return "join/joinok.tiles";
    }

    @ResponseBody
    @GetMapping("/join/checkuid")
    public void checkuid(String uid, HttpServletResponse res) {
        try {
            res.getWriter().println(usrv.checkUserid(uid));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
