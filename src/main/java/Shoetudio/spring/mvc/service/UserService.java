package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.vo.User;

import javax.servlet.http.HttpSession;

public interface UserService {

    String newUser(User u);
    String findZipcode(String dong);
    String checkUserid(String uid);
    boolean checkLogin(User u, HttpSession sess);

}
