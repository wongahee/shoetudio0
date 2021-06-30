package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.dao.CommunityDAO;
import Shoetudio.spring.mvc.utils.ImgUploadUtil;
import Shoetudio.spring.mvc.vo.Community;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CommunityServiceImpl implements CommunityService {

    private CommunityDAO cdao;
    private ImgUploadUtil imgutil;

    @Autowired public CommunityServiceImpl(CommunityDAO cdao, ImgUploadUtil imgutil) {
        this.cdao = cdao;
        this.imgutil = imgutil;
    }

    @Override
    public boolean newCommunity(Community cm, MultipartFile[] img) {

        // UUID 생성
        String uuid = imgutil.makeUUID();

        if (imgutil.checkImageFiles(img)) {
            List<String> imgs = new ArrayList<>();

            for(MultipartFile f : img) {
                if (!f.getOriginalFilename().isEmpty())
                    imgs.add(imgutil.ImageUpload(f, uuid));
                else
                    imgs.add("-/-/-");
            }   // for

            String fnames = "";

            for (int i = 0; i < imgs.size(); ++i) {
                fnames += imgs.get(i).split("[/]")[0] + "/";
            }

            cm.setFnames(fnames);
            cm.setUuid(uuid);
        }   // if

        int id = cdao.insertCommunity(cm);

        return true;
    }

    @Override
    public void modifyCommunity(Community cm, MultipartFile[] img) {
        if(imgutil.checkImageFiles(img)) {
            List<String> imgs = new ArrayList<>();

            for(MultipartFile f : img) {
                if (!f.getOriginalFilename().isEmpty())
                    imgs.add(imgutil.ImageUpload(f, cm.getUuid()));
                else
                    imgs.add("-/-/-");
            }   // for

            String fn = cdao.readFnames(cm.getCmno());

            String[] ofn = fn.split("[/]");

            String fnames = "";
            for (int i = 0; i < imgs.size(); ++i) {
                fnames += imgs.get(i).split("[/]")[0] + "/";
            }

            String[] nfn = fnames.split("[/]");

            String todie[] = new String[5];
            for(int i = 0; i < cm.getTodie().length(); ++i) {
                int pos = Integer.parseInt(cm.getTodie().substring(i, i+1));
                ofn[pos-1] = nfn[i];
                todie[i] = fn.split("[/]")[pos-1];
            }

            fnames = String.join("/", ofn);

            cm.setFnames(fnames);

            // 이미지 파일 제거
            String fpath = "";  //경로
            for (int i = 0; i < todie.length; ++i) {
                try {
                    int pos = todie[i].lastIndexOf(".");
                    String name = todie[i].substring(0, pos);
                    String ext = todie[i].substring(pos + 1);

                    // 이미지 경로 생성
                    String one = name + cm.getUuid() + "." + ext;

                    File f = new File(fpath + "cdn/" + one);
                    f.delete();
                } catch (Exception ex) { }
            }
        }   // if

        cdao.updateCommunity(cm);

    }

    @Override
    public Community removeCommunity(String cmno) {
        Community cm = cdao.selectOneCommunity(cmno);
        cdao.deleteCommunity(cmno);

        return cm;
    }

    @Override
    public List<Community> readCommunity(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 16;

        return cdao.selectCommunity(snum);
    }

    @Override
    public List<Community> readCommunity(String cp, String ftype, String fkey) {
        int snum = (Integer.parseInt(cp) - 1) * 16;

        Map<String, Object> params = new HashMap<>();
        params.put("snum", snum);
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return cdao.findSelectCommunity(params);
    }

    @Override
    public Community readOneCommunity(String cmno) {
        return cdao.selectOneCommunity(cmno);
    }

    @Override
    public int countCommunity() {
        return cdao.selectCountCommunity();
    }

    @Override
    public int countCommunity(String ftype, String fkey) {
        Map<String, Object> params = new HashMap<>();
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return cdao.selectCountCommunity();
    }

    @Override
    public boolean viewCountCommunity(String cmno) {
        boolean isUpdated = false;
        if (cdao.viewCountCommunity(cmno) > 0) isUpdated = true;

        return isUpdated;
    }

    @Override
    public String readPrecom(String cmno) {
        return cdao.selectPrvno(cmno);
    }

    @Override
    public String readNextcom(String cmno) {
        return cdao.selectNctno(cmno);
    }

    @Override
    public void modifyRecmd(String cmno) {
        cdao.updateRecmd(cmno);
    }

}
