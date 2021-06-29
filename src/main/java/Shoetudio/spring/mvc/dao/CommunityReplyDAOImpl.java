package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Reply;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("crdao")
public class CommunityReplyDAOImpl implements CommunityReplyDAO{

    @Autowired private SqlSession sqlSession;

    @Override
    public List<Reply> selectReply(String cmno) {
        return sqlSession.selectList("cmreply.selectReply", cmno);
    }

    @Override
    public int insertComment(Reply r) {
        r.setRpno(selectLastRno());

        return sqlSession.insert("cmreply.insertComment", r);
    }

    @Override
    public int insertReply(Reply r) {
        return sqlSession.insert("cmreply.insertComment", r);
    }

    @Override
    public int deleReply(Reply r) {
        return sqlSession.delete("cmreply.deleReply", r);
    }

    @Override
    public void updateReply(Reply r) {
        sqlSession.update("comreply.updateReply", r);
    }


    // 최근 댓글 번호 찾기
    private String selectLastRno() {
        return sqlSession.selectOne("cmreply.selectLastRno");
    }

    @Override
    public Reply selectOneReply(String rno) {
        return sqlSession.selectOne("cmreply.selectReply", rno);
    }

}
