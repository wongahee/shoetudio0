package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.vo.Community;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface CommunityService {

    boolean newCommunity(Community cm, MultipartFile[] img);
    void modifyCommunity(Community cm, MultipartFile[] img);
    Community removeCommunity(String cmno);

    List<Community> readCommunity(String cp);
    List<Community> readCommunity(String cp, String ftype, String fkey);
    Community readOneCommunity(String cmno);

    int countCommunity();
    int countCommunity(String ftype, String fkey);
    boolean viewCountCommunity(String cmno);

    String readPrecom(String cmno);

    String readNextcom(String cmno);

    void modifyRecmd(String cmno);



}
