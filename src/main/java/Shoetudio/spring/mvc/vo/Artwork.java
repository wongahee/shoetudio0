package Shoetudio.spring.mvc.vo;

// 작가 작품 게시판
public class Artwork {

    // 작가 아이디를 제외한 나머지에는 'aw'를 붙임
    protected String awno; // 작품 게시글 번호
    protected String awtitle; // 작품 제목
    protected String userid; // 작가 아이디
    protected String awregd; // 작품 등록일
    protected String awviews; // 작품 조회 수
    protected String awthumbup; // 작품 추천 수
    protected String awcont; // 작품 내용
    protected String uuid;
    protected String todie;
    protected String fnames;
    protected String fsizes;
    protected String shoetype;
    protected String shoecost;
    protected String shippingfee;
    protected String custperiod;
    protected String utype;

    public String getAwno() {
        return awno;
    }

    public void setAwno(String awno) {
        this.awno = awno;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getAwtitle() {
        return awtitle;
    }

    public void setAwtitle(String awtitle) {
        this.awtitle = awtitle;
    }

    public String getAwviews() {
        return awviews;
    }

    public void setAwviews(String awviews) {
        this.awviews = awviews;
    }

    public String getAwthumbup() {
        return awthumbup;
    }

    public void setAwthumbup(String awthumbup) {
        this.awthumbup = awthumbup;
    }

    public String getAwcont() {
        return awcont;
    }

    public void setAwcont(String awcont) {
        this.awcont = awcont;
    }

    public String getAwregd() {
        return awregd;
    }

    public void setAwregd(String awregd) {
        this.awregd = awregd;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getTodie() {
        return todie;
    }

    public void setTodie(String todie) {
        this.todie = todie;
    }

    public String getFnames() {
        return fnames;
    }

    public void setFnames(String fnames) {
        this.fnames = fnames;
    }

    public String getShoetype() {
        return shoetype;
    }

    public void setShoetype(String shoetype) {
        this.shoetype = shoetype;
    }

    public String getShoecost() {
        return shoecost;
    }

    public void setShoecost(String shoecost) {
        this.shoecost = shoecost;
    }

    public String getShippingfee() {
        return shippingfee;
    }

    public void setShippingfee(String shippingfee) {
        this.shippingfee = shippingfee;
    }

    public String getCustperiod() {
        return custperiod;
    }

    public void setCustperiod(String custperiod) {
        this.custperiod = custperiod;
    }

    public String getFsizes() {
        return fsizes;
    }

    public void setFsizes(String fsizes) {
        this.fsizes = fsizes;
    }

    public String getUtype() {
        return utype;
    }

    public void setUtype(String utype) {
        this.utype = utype;
    }
}
