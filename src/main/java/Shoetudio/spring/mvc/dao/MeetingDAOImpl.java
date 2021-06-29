package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Meeting;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("mtdao")
public class MeetingDAOImpl implements MeetingDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertMeeting(Meeting mt) {
        return sqlSession.insert("artwork.insertMeeting", mt);
    }
}
