package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.vo.Custom;

import java.util.List;

public interface CustomService {

    List<Custom> readCustom(String cp);

}