package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Community;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("cmdao")
public class CommunityDAOImpl implements CommunityDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertCommunity(Community cm) {
        sqlSession.insert("community.insertCommunity", cm);
        return sqlSession.selectOne("community.lastCommId");
    }

    @Override
    public int updateCommunity(Community cm) {
        return sqlSession.update("community.updateCommunity", cm);
    }

    @Override
    public int deleteCommunity(String cmno) {
        return sqlSession.delete("community.deleteCommunity", cmno);
    }

    @Override
    public List<Community> selectCommunity(int snum) {
        return sqlSession.selectList("community.selectCommunity", snum);
    }

    @Override
    public List<Community> findSelectCommunity(Map<String, Object> param) {
        return sqlSession.selectList("community.findSelect", param);
    }

    @Override
    public Community selectOneCommunity(String cmno) {
        return sqlSession.selectOne("community.selectOne", cmno);
    }

    @Override
    public int selectCountCommunity() {
        return sqlSession.selectOne("community.countCommunity");
    }

    @Override
    public int selectCountCommunity(Map<String, Object> param) {
        return sqlSession.selectOne("community.findSelectCount", param);
    }

    @Override
    public int viewCountCommunity(String cmno) {
        return sqlSession.update("community.viewsCommunity", cmno);
    }

    @Override
    public String readFnames(String cmno) {
        return sqlSession.selectOne("community.readFnames", cmno);
    }

    @Override
    public String selectPrvno(String cmno) {
        return sqlSession.selectOne("community.selectPrv", cmno);
    }

    @Override
    public String selectNctno(String cmno) {
        return sqlSession.selectOne("community.selectNext", cmno);
    }

    @Override
    public void updateRecmd(String cmno) {
        sqlSession.update("community.updateThumbs", cmno);
    }


}
