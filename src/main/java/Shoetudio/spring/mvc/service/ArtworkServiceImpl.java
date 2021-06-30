package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.dao.ArtworkDAO;
import Shoetudio.spring.mvc.utils.ImgUploadUtil;
import Shoetudio.spring.mvc.vo.Artwork;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("awsrv")
public class ArtworkServiceImpl implements ArtworkService {

    private ArtworkDAO awdao;
    private ImgUploadUtil imgutil;

    @Autowired
    public ArtworkServiceImpl(ArtworkDAO awdao, ImgUploadUtil iuu) {
        this.awdao = awdao;
        this.imgutil = iuu;
    }

    @Override
    public boolean newArtwork(Artwork aw, MultipartFile[] img) {
        String uuid = imgutil.makeUUID();

        if (imgutil.checkImageFiles(img)) {

            List<String> imgs = new ArrayList<>();

            for(MultipartFile f : img) {
                if (!f.getOriginalFilename().isEmpty())
                    imgs.add(imgutil.ImageUpload(f, uuid));
                else
                    imgs.add("-/-/-");
            }

            String fnames = "";
            String fsizes = "";

            for (int i = 0; i < imgs.size(); ++i) {
                fnames += imgs.get(i).split("[/]")[0] + "/";
                fsizes += imgs.get(i).split("[/]")[1] + "/";
            }

            aw.setFnames( fnames );
            aw.setFsizes( fsizes );
            aw.setUuid( uuid );
        }

        int id = awdao.insertArtwork(aw);

        String ofname = aw.getFnames().split("/")[0];
        int pos = ofname.lastIndexOf(".");
        String fname = ofname.substring(0, pos);
        String fext = ofname.substring(pos + 1);
        ofname = fname + uuid + "." + fext;

        imgutil.imageCropResize(ofname, id + "");

        return true;
    }

    @Override
    public void modifyArtwork(Artwork aw, MultipartFile[] img) {
        if (imgutil.checkImageFiles(img)) {

            List<String> imgs = new ArrayList<>();

            for(MultipartFile f : img) {
                if (!f.getOriginalFilename().isEmpty())
                    imgs.add(imgutil.ImageUpload(f, aw.getUuid()));
                else
                    imgs.add("-/-/-/-");
            }

            String fn = awdao.readFnames(aw.getAwno());
            String fs = awdao.readFsizes(aw.getAwno());

            String[] ofn = fn.split("[/]");
            String[] ofs = fs.split("[/]");

            String fnames = "";
            String fsizes = "";
            for (int i = 0; i < imgs.size(); ++i) {
                fnames += imgs.get(i).split("[/]")[0] + "/";
                fsizes += imgs.get(i).split("[/]")[1] + "/";
            }

            String[] nfn = fnames.split("[/]");
            String[] nfs = fsizes.split("[/]");

            String todie[] = new String[3];
            for (int i = 0; i < aw.getTodie().length(); ++i) {
                int pos = Integer.parseInt(aw.getTodie().substring(i, i + 1));
                ofn[pos - 1] = nfn[i];
                ofs[pos - 1] = nfs[i];
                todie[i] = fn.split("[/]")[pos - 1];
            }

            fnames = String.join("/", ofn);
            fsizes = String.join("/", ofs);

            aw.setFnames( fnames );
            aw.setFsizes( fsizes );

            String fpath = "/usr/local/var/www/";
            for (int i = 0; i < todie.length; ++i) {
                try {
                    int pos = todie[i].lastIndexOf(".");
                    String name = todie[i].substring(0, pos);
                    String ext = todie[i].substring(pos + 1);

                    String one = name + aw.getUuid() + "." + ext;
                    String two = "thumb/small_" + aw.getAwno() + "_" + one;

                    File f = new File(fpath + "cdn/" + one);
                    f.delete();
                    f = new File(fpath + two);
                    f.delete();
                } catch (Exception ex) { }
            }
        }

        awdao.updateArtwork(aw);

        String ofname = aw.getFnames().split("/")[0];
        int pos = ofname.lastIndexOf(".");
        String fname = ofname.substring(0, pos);
        String fext = ofname.substring(pos + 1);
        ofname = fname + aw.getUuid() + "." + fext;

        imgutil.imageCropResize(ofname, aw.getAwno() + "");

    }

    @Override
    public Artwork removeArtwork(String awno) {
        Artwork aw = awdao.selectOneArtwork(awno);
        awdao.deleteArtwork(awno);

        return aw;
    }

    @Override
    public List<Artwork> readArtwork(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 12;

        return awdao.selectArtwork(snum);
    }

    @Override
    public List<Artwork> readArtwork(String cp, String ftype, String fkey) {
        int snum = (Integer.parseInt(cp) - 1) * 12;

        Map<String, Object> params = new HashMap<>();
        params.put("snum", snum);
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return awdao.findSelectArtwork(params);
    }

    @Override
    public Artwork readOneArtwork(String awno) {
        return awdao.selectOneArtwork(awno);
    }

    @Override
    public int countArtwork() {
        return awdao.selectCountArtwork();
    }

    @Override
    public int countArtwork(String ftype, String fkey) {
        Map<String, Object> params = new HashMap<>();
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return awdao.selectCountArtwork(params);
    }

    @Override
    public boolean viewCountArtwork(String awno) {
        boolean isUpdated = false;
        if (awdao.viewCountArtwork(awno) > 0) isUpdated = true;

        return isUpdated;
    }

    @Override
    public void thumbsArtwork(String awno) {
        awdao.updateThumbs(awno);
    }

    @Override
    public String readPrvawno(String awno) {
        return awdao.selectPrvawno(awno);
    }

    @Override
    public String readNxtawno(String awno) {
        return awdao.selectNxtawno(awno);
    }

}
