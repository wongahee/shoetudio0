package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.dao.CustomDAO;
import Shoetudio.spring.mvc.vo.Custom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("csrv")
public class CustomServiceImpl implements CustomService {

    @Autowired private CustomDAO cdao;

    @Override
    public List<Custom> readCustom(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 12;

        return cdao.selectCustom(snum);
    }

}