package Shoetudio.spring.mvc.controller;

import Shoetudio.spring.mvc.service.CommunityReplyService;
import Shoetudio.spring.mvc.service.CommunityService;
import Shoetudio.spring.mvc.vo.Community;
import Shoetudio.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommunityController {

    private CommunityService csrv;
    private CommunityReplyService crsrv;

    @Autowired
    public CommunityController (CommunityService csrv, CommunityReplyService crsrv) {
        this.csrv = csrv;
        this.crsrv = crsrv;
    }

    // 글 목록 보기
    @GetMapping("/community/list")
    public ModelAndView list(ModelAndView mv, String cp) {
        if (cp == null) cp = "1";
        mv.setViewName("board/list.tiles");
        mv.addObject("cms", csrv.readCommunity(cp));
        mv.addObject("cmcnt", csrv.countCommunity());

        return mv;
    }

    // 글 보기
    @GetMapping("/community/view")
    public ModelAndView view(ModelAndView mv, String cmno) {
        csrv.viewCountCommunity(cmno);

        mv.setViewName("board/board.tiles");
        mv.addObject("cm", csrv.readOneCommunity(cmno));
        mv.addObject("rps", crsrv.readReply(cmno));

        return mv;
    }

    @GetMapping("/community/write")
    public String write() {
        return "board/write.tiles";
    }

    // 글 쓰기
    @PostMapping("/community/write")
    public String writeok(Community cm, MultipartFile[] img) {

        csrv.newCommunity(cm, img);

        return "redirect:/community/list";
    }

    // 검색 기능
    @GetMapping("/community/find")
    public ModelAndView find(ModelAndView mv, String cp, String findtype, String findkey) {

        mv.setViewName("board/list.tiles");
        mv.addObject("cms", csrv.readCommunity(cp, findtype, findkey));
        mv.addObject("cmcnt", csrv.countCommunity(findtype, findkey));

        return mv;
    }

    // 댓글 쓰기
    @PostMapping("/reply/write")
    public String replyok(Reply r) {
        String returnpage = "redirect:/community/view?cmno=" + r.getCmno();

        crsrv.newComment(r);

        return returnpage;
    }

    // 댓글 수정
    @PostMapping("/reply/modify")
    public String moreply(Reply r) {
        String returnpage = "redirect:/community/view?cmno=" + r.getCmno();

        crsrv.newReply(r);

        return returnpage;
    }

    // 글 수정하기
    @GetMapping("/community/update")
    public ModelAndView update(ModelAndView mv, String cmno) {
        mv.setViewName("board/update.tiles");   // board upadate.jsp 필요
        mv.addObject("cm", csrv.readOneCommunity(cmno));

        return mv;
    }

    @PostMapping("/community/update")
    public String updateok(Community cm, MultipartFile[] img) {

        csrv.modifyCommunity(cm, img);
        return "redirect:/community/list";
    }

    // 추천하기
    @GetMapping("/community/recommd")
    public String recomd(String cmno) {
        csrv.modifyRecmd(cmno);

        return "redirect:/community/view?cmno=" + cmno;
    }

    // 이전글 보여주기
    @GetMapping("/community/prev")
    public String commprev(String cmno) {
        String prvcmno = csrv.readPrecom(cmno);

        return "redirect:/community/view?cmno=" + prvcmno;
    }

    // 다음글 보여주기
    @GetMapping("/community/next")
    public String commnext(String cmno) {
        String nxtcmpo = csrv.readNextcom(cmno);

        return "redirect:/community/view?cmno=" + nxtcmpo;
    }

    // 글 삭제제
    @GetMapping("/community/cmrmv")
    public String cmrmv(String cmno) {
        String nxtcmno = csrv.readNextcom(cmno);

        // 테이블에서 게시글 삭제
        Community cm = csrv.removeCommunity(cmno);
        // 첨부파일 삭제???

        return "redirect:/community/list";
    }

    // 댓글 삭제제
    @GetMapping("/community/reply/rprmv")
    public String rrmv(String cmno, String rno) {
        // String returnpage = "redirect:/community/view?cmno=" + r.getCmno();

        Reply r = crsrv.deleteReply(rno);

        return "redirect:/community/view?cmno=" + r.getCmno() ;
    }

}
