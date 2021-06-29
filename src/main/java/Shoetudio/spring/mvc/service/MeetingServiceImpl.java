package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.dao.MeetingDAO;
import Shoetudio.spring.mvc.vo.Meeting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("mtsrv")
public class MeetingServiceImpl implements MeetingService {

    @Autowired
    private MeetingDAO mtdao;

    @Override
    public boolean newMeeting(Meeting mt, String awno) {

        boolean isInserted = false;
        if (mtdao.insertMeeting(mt) > 0) isInserted = true;

        return isInserted;

    }

}
