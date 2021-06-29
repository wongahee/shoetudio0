package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.vo.Artwork;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface ArtworkService {

    boolean newArtwork(Artwork aw, MultipartFile[] img); // 입력
    void modifyArtwork(Artwork aw, MultipartFile[] img); // 수정
    Artwork removeArtwork(String awno); // 삭제

    List<Artwork> readArtwork(String cp);
    List<Artwork> readArtwork(String cp, String ftype, String fkey); // 검색
    Artwork readOneArtwork(String awno);

    int countArtwork();
    int countArtwork(String ftype, String fkey);
    boolean viewCountArtwork(String awno); // 조회 수
    void thumbsArtwork(String awno); // 추천 수

    String readPrvawno(String awno);
    String readNxtawno(String awno);

}
