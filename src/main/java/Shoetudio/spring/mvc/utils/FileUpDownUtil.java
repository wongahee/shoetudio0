package Shoetudio.spring.mvc.utils;

import Shoetudio.spring.mvc.vo.Artwork;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component("fud")
public class FileUpDownUtil {
    // 파일 업로드 경로 지정
    private String uploadPath = "/Users/celeste/Documents/artistupload/";
    // private String uploadPath2 = "/Users/celeste/Documents/communityupload/";

    // 업로드 처리 메서드
    public String proUpload(MultipartFile mf, String uuid) {
        String ofname = mf.getOriginalFilename();

        int pos = ofname.lastIndexOf(".");
        String ftype = ofname.substring(pos + 1);
        String fname = ofname.substring(0, pos);

        String nfname = fname + uuid + "." + ftype;

        try {
            mf.transferTo(new File(uploadPath + nfname));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return ofname + "/" + (mf.getSize() / 1024) + "/" + ftype;
    }

    /*public String proUpload2(MultipartFile mf, String uuid) {
        String ofname = mf.getOriginalFilename();

        int pos = ofname.lastIndexOf(".");
        String ftype = ofname.substring(pos + 1);
        String fname = ofname.substring(0, pos);

        String nfname = fname + uuid + "." + ftype;

        try {
            mf.transferTo(new File(uploadPath2 + nfname));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return ofname + "/" + (mf.getSize() / 1024) + "/" + ftype;
    }*/

    public String makeUUID() {
        String fmt = "yyyyMMddHHmmss";
        SimpleDateFormat sdf = new SimpleDateFormat(fmt);

        return sdf.format(new Date());
    }

    public void removeAttach(Artwork aw) {
        // 삭제할 파일명 재조립1
        int pos = aw.getFnames().lastIndexOf(".");
        String fname = aw.getFnames().substring(0, pos) + aw.getUuid() + "." + aw.getFnames().substring(pos + 1);

        // 재조립된 파일명들을 하나씩 삭제함
        File f = new File(uploadPath, fname);
        f.delete();

    }

}

