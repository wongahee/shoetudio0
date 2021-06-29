package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Custom;

import java.util.List;

public interface CustomDAO {

    List<Custom> selectCustom(int snum);

}