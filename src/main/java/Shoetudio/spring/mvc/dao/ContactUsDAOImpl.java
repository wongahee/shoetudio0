package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.ContactUs;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("usdao")
public class ContactUsDAOImpl implements ContactUsDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertContact(ContactUs cu) {
        return sqlSession.insert("contactus.insertContact", cu);
    }

}