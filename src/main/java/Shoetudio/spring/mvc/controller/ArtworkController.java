package Shoetudio.spring.mvc.controller;

import Shoetudio.spring.mvc.service.ArtworkService;
import Shoetudio.spring.mvc.service.MeetingService;
import Shoetudio.spring.mvc.utils.FileUpDownUtil;
import Shoetudio.spring.mvc.vo.Artwork;
import Shoetudio.spring.mvc.vo.Meeting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtworkController {

    @Autowired
    private ArtworkService awsrv;
    @Autowired
    private MeetingService mtsrv;
    @Autowired
    private FileUpDownUtil fud;

    @GetMapping("/artist/list")
    public ModelAndView list(ModelAndView mv, String cp) {
        if (cp == null) cp = "1";

        mv.setViewName("artist/list.tiles");
        mv.addObject("aws", awsrv.readArtwork(cp));
        mv.addObject("awcnt", awsrv.countArtwork());

        return mv;
    }

    @GetMapping("/artist/view")
    public ModelAndView view(ModelAndView mv, String awno) {

        awsrv.viewCountArtwork(awno);

        mv.setViewName("artist/view.tiles");
        mv.addObject("aw", awsrv.readOneArtwork(awno));

        return mv;
    }

    @GetMapping("/artist/write")
    public String write() {
        return "artist/write.tiles";
    }

    @PostMapping("/artist/write")
    public String writeok(Artwork aw, MultipartFile[] file) {
        awsrv.newArtwork(aw, file);

        return "redirect:/artist/list";
    }

    @GetMapping("/artist/update")
    public ModelAndView update(ModelAndView mv, String awno) {

        mv.setViewName("artist/update.tiles");
        mv.addObject("aw", awsrv.readOneArtwork(awno));

        return mv;

    }

    @PostMapping("/artist/update")
    public String updateok(Artwork aw, MultipartFile[] img) {

        awsrv.modifyArtwork(aw, img);

        return "redirect:/artist/list";
    }

    // 작품 검색
    @GetMapping("/artist/find")
    public ModelAndView find(ModelAndView mv, String cp, String findtype, String findkey) {

        mv.setViewName("artist/list.tiles");
        mv.addObject("aws", awsrv.readArtwork(cp, findtype, findkey));
        mv.addObject("awcnt", awsrv.countArtwork(findtype, findkey));

        return mv;
    }

    @GetMapping("/artist/views")
    public String views(String awno) {
        awsrv.viewCountArtwork(awno);

        return "redirect:/artist/view?awno=" + awno;
    }

    @GetMapping("/artist/prev")
    public String awprev(String awno) {
        awsrv.readPrvawno(awno);

        return "redirect:/artist/view?awno=" + awno;
    }

    @GetMapping("/artist/next")
    public String awnext(String awno) {
        String nxtawno = awsrv.readNxtawno(awno);

        return "redirect:/artist/view?awno=" + nxtawno;
    }

    @GetMapping("/artist/delete")
    public String delete(String awno) {

        Artwork aw = awsrv.removeArtwork(awno);
        fud.removeAttach(aw);

        return "redirect:/artist/list";
    }

    // 추천하기
    @GetMapping("/artist/recommd")
    public String recomd(String awno) {
        awsrv.thumbsArtwork(awno);

        return "redirect:/artist/view?awno=" + awno;
    }

    // 견적서 의뢰
    @PostMapping("/artist/send")
    public String meeting(Meeting mt, String awno) {
        mtsrv.newMeeting(mt, awno);

        return "redirect:/artist/view?awno=" + awno;
    }
}
