package Shoetudio.spring.mvc.dao;

import Shoetudio.spring.mvc.vo.Artwork;

import java.util.List;
import java.util.Map;

public interface ArtworkDAO {

    int insertArtwork(Artwork aw); // 입력

    int updateArtwork(Artwork aw); // 수정

    int deleteArtwork(String awno); // 삭제

    List<Artwork> selectArtwork(int snum); // 리스트

    List<Artwork> findSelectArtwork(Map<String, Object> param); // 검색

    Artwork selectOneArtwork(String awno); // 하나 선택

    int selectCountArtwork();

    int selectCountArtwork(Map<String, Object> param);

    int viewCountArtwork(String awno); // 조회 수

    String readFnames(String awno); // 사진 이름

    void updateThumbs(String awno);

    String selectPrvawno(String awno); // 이전 페이지

    String selectNxtawno(String awno); // 다음 페이지

    String readFsizes(String awno);
}
