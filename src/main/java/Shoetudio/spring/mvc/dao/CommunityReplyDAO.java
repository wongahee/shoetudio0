package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Reply;

import java.util.List;

public interface CommunityReplyDAO {

    List<Reply> selectReply(String cmno);

    int insertComment(Reply r);
    int insertReply(Reply r);

    int deleReply(Reply r);
    void updateReply(Reply r);

    Reply selectOneReply(String rno);


}
