package Shoetudio.spring.mvc.vo;

public class Meeting {

    protected String mtno;
    protected String mtitle;
    protected String userid;
    protected String uemail;
    protected String mtcont;

    public String getMtno() {
        return mtno;
    }

    public void setMtno(String mtno) {
        this.mtno = mtno;
    }

    public String getMtitle() {
        return mtitle;
    }

    public void setMtitle(String mtitle) {
        this.mtitle = mtitle;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getMtcont() {
        return mtcont;
    }

    public void setMtcont(String mtcont) {
        this.mtcont = mtcont;
    }
}
