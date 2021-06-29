package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Artwork;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("awdao")
public class ArtworkDAOImpl implements ArtworkDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertArtwork(Artwork aw) {
        sqlSession.insert("artwork.insertArtwork", aw);
        return sqlSession.selectOne("artwork.lastAwID");
    }

    @Override
    public int updateArtwork(Artwork aw) {
        return sqlSession.update("artwork.updateArtwork", aw);
    }

    @Override
    public int deleteArtwork(String awno) {
        return sqlSession.delete("artwork.deleteArtwork", awno);
    }

    @Override
    public List<Artwork> selectArtwork(int snum) {
        return sqlSession.selectList("artwork.selectArtwork", snum);
    }

    @Override
    public List<Artwork> findSelectArtwork(Map<String, Object> param) {
        return sqlSession.selectList("artwork.findSelectArtwork", param);
    }

    @Override
    public Artwork selectOneArtwork(String awno) {
        return sqlSession.selectOne("artwork.selectOneArtwork", awno);
    }

    @Override
    public int selectCountArtwork() {
        return sqlSession.selectOne("artwork.countArtwork");
    }

    @Override
    public int selectCountArtwork(Map<String, Object> param) {
        return sqlSession.selectOne("artwork.findSelectCount", param);
    }

    @Override
    public int viewCountArtwork(String awno) {
        return sqlSession.update("artwork.viewsArtwork", awno);
    }

    @Override
    public String readFnames(String awno) {
        return sqlSession.selectOne("artwork.readFnames", awno);
    }

    @Override
    public void updateThumbs(String awno) {
        sqlSession.update("artwork.updateThumbs", awno);
    }

    @Override
    public String selectPrvawno(String awno) {
        return sqlSession.selectOne("selectPrv", awno);
    }

    @Override
    public String selectNxtawno(String awno) {
        return sqlSession.selectOne("selectNxt", awno);
    }

    @Override
    public String readFsizes(String awno) {
        return sqlSession.selectOne("artwork.readFsizes", awno);
    }

}
