package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.vo.Reply;

import java.util.List;

public interface CommunityReplyService {

    List<Reply> readReply(String cmno);

    boolean newComment(Reply r);
    boolean newReply(Reply r);
    Reply deleteReply(String rno);
    Reply readOneReply(String rno);
    void modifyReply(Reply r);

}
