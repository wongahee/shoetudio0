package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Custom;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("cdao")
public class CustomDAOImpl implements CustomDAO {

    @Autowired private SqlSession sqlSession;

    @Override
    public List<Custom> selectCustom(int snum) {
        return sqlSession.selectList("custom.selectCustom", snum);
    }

}