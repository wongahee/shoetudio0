package Shoetudio.spring.mvc.service;

import Shoetudio.spring.mvc.vo.Meeting;

public interface MeetingService {

    boolean newMeeting(Meeting mt, String awno);
}
