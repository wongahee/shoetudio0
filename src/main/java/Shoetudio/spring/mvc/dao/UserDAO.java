package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.User;

public interface UserDAO {

    int insertUser(User u);
    int selectOneUserid(String uid);
    int selectUser(User u);
}
