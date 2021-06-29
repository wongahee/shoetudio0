package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.dao.CommunityReplyDAO;
import Shoetudio.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("crsrv")
public class CommunityReplyServiceImpl implements CommunityReplyService{

    @Autowired private CommunityReplyDAO crdao;

    @Override
    public List<Reply> readReply(String cmno) {
        return crdao.selectReply(cmno);
    }

    @Override   // 댓글
    public boolean newComment(Reply r) {
        boolean isInserted = false;
        if(crdao.insertComment(r) > 0) isInserted = true;

        return isInserted;
    }

    @Override   // 대댓글
    public boolean newReply(Reply r) {
        boolean isInserted = false;
        if(crdao.insertReply(r) > 0) isInserted = true;

        return isInserted;
    }


    // 댓글 삭제
    public Reply deleteReply(String rno) {
        Reply r = crdao.selectOneReply(rno);
        crdao.deleReply(r);

        return r;
    }

    // 댓글 하나 읽어와
    public Reply readOneReply(String rno) {
        return crdao.selectOneReply(rno);
    }

    // 댓글 수정
    public void modifyReply(Reply r) {
        crdao.updateReply(r);
    }
}
