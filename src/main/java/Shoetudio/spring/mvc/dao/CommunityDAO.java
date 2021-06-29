package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Community;

import java.util.List;
import java.util.Map;

public interface CommunityDAO {

    int insertCommunity(Community cm);
    int updateCommunity(Community cm);
    int deleteCommunity(String cmno);

    List<Community> selectCommunity(int snum);
    List<Community> findSelectCommunity(Map<String, Object> param);
    Community selectOneCommunity(String cmno);

    int selectCountCommunity();
    int selectCountCommunity(Map<String, Object> param);
    int viewCountCommunity(String cmno);

    String readFnames(String cmno);


    String selectPrvno(String cmno);

    String selectNctno(String cmno);

    void updateRecmd(String cmno);
}
