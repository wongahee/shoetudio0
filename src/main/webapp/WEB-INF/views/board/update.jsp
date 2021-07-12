<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fname" value="${fn:split(cm.fnames, '/')}" />

<c:set var="newChar" value="
" scope="application" />

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      type="text/css"
      href="../css/normalise.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../css/grid.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../css/ionicons.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/css/write.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/css/queries.css"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,100&display=swap"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <script src="https://use.fontawesome.com/6a4ab084c1.js"></script>

    <script src="https://www.google.com/recaptcha/api.js"></script>

    <title>게시판-글수정</title>
  </head>
  <body>
    <header>
      <nav>
        <div class="row">
          <img
            src="/img/Shoetudio_logo.png"
            alt="Shoetudio"
            class="logo"
          />
          <ul class="main-nav">
            <li>
              <a href="/about"
              >About Us</a
              >
            </li>
            <li><a href="/custom/list">Custom</a></li>
            <li><a href="/artist/list">Artist</a></li>
            <li><a href="/community/list?cp=1">Community</a></li>
          </ul>
        </div>
      </nav>
      <br />
    </header>
        <!-- 페이지 타이틀 -->
        <div class="row">
          <h2><i class="ion-ios-chatboxes">자유게시판</i></h2>
          <br />
          <hr />
        </div>
        <!-- 새글 작성 -->
        <div class="row">
          <div class="col span-1-of-3" id="new-post" style="padding-left: 100px">
            <h3><i class="ion-ios-plus"> 글수정</i></h3>
          </div>
          <div class="col span-2-of-3" style="padding-left: 500px">
            <button type="button" class="button" id="listbtn">
              <i class="ion-ios-toggle"></i> 목록으로
            </button>
          </div>
        </div>

        <div>
          <form name="modcmfrm" id="modcmfrm">
            <div class="row">
              <label for="title" class="col span-1-of-3" style="padding-left: 140px">
                제목</label>
              <input type="text" name="title" id="title" value="${cm.title}" class="col span-2-of-3" style="width: 600px"/>
            </div>
            <div class="row">
              <label for="userid" class="col span-1-of-3" id="creator" style="padding-left: 135px">
                작성자</label>
              <input type="text" name="userid" id="userid" value="${cm.userid}" class="col span-2-of-3" style="width: 600px" readonly/>
            </div>
            <div class="form-group row">
              <label for="contents" class="col span-1-of-3" id="context" style="padding-left: 130px">
                본문내용</label>
              <textarea id="contents" name="contents" rows="15" class="col span-2-of-3" style="width: 600px">
                ${fn:replace(cm.contents, newChar, "<br/>")}
              </textarea>

              <!-- 첨부파일 -->
              <div class="form-group row">
                <label class="col-2 col-form-label text-danger text-right" for="file1">파일 첨부</label>

                <div class="custom-control custom-checkbox">
                  <input type="checkbox" id="die1" class="custom-control-input">
                  <label for="die1" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                  <input type="file" name="img" id="file1"
                         class="custom-file-input" disabled>
                  <label class="custom-file-label">${fname[0]}</label>
                </div>
              </div>

              <div class="form-group-row">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" id="die2" class="custom-control-input">
                  <label for="die2" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                  <input type="file" name="img" id="file2"
                         class="custom-file-input" disabled>
                  <label class="custom-file-label">${fname[1]}</label>
                </div>
              </div>

              <div class="form-group-row">
                <div class="custom-control custom-checkbox offset-2">
                  <input type="checkbox" id="die3" class="custom-control-input">
                  <label for="die3" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                  <input type="file" name="img" id="file3"
                         class="custom-file-input" disabled>
                  <label class="custom-file-label">${fname[2]}</label>
                </div>
              </div>

              <div class="form-group-row">
                <div class="custom-control custom-checkbox offset-2">
                  <input type="checkbox" id="die4" class="custom-control-input">
                  <label for="die4" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                  <input type="file" name="img" id="file4"
                         class="custom-file-input" disabled>
                  <label class="custom-file-label">${fname[3]}</label>
                </div>
              </div>

              <div class="form-group-row">
                <div class="custom-control custom-checkbox offset-2">
                  <input type="checkbox" id="die5" class="custom-control-input">
                  <label for="die5" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                  <input type="file" name="img" id="file5"
                         class="custom-file-input" disabled>
                  <label class="custom-file-label">${fname[4]}</label>
                </div>
              </div>

            </div>

            <div class="form-group row">
              <label class="col span-1-of-3" id="recaptcha" style="padding-left: 120px">
                자동가입방지</label>
              <div class="g-recaptcha" data-sitekey="6LdoIwgbAAAAALfBPVcgpuKT8532BKHw6wusA_l1" ></div>
              <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
            </div>

            <br/>
            <div class="row" id="button-section">
              <hr/>
              <div class="col span-3-of-4" id="button" >
                <button type="button" class="button1" style="height: 40px; width:120px; border-radius: 10px" name="modbtn" id="modbtn">
                  <i class="ion-ios-checkmark"></i> 입력완료
                </button>
                <button type="reset" class="button2" style="height: 40px; width:120px; border-radius: 10px" >
                  <i class="ion-ios-close"></i> 다시입력
                </button>
              </div>
            </div>

            <%-- 첨부파일 수정여부를 저장하기 위한 변수 --%>
            <input type="hidden" name="todie" id="todie" >
            <%-- uuid 를 저장하기 위한 변수 --%>
            <input type="hidden" name="uuid" id="uuid" value="${cm.uuid}" >
            <input type="hidden" name="cmno" id="cmno" value="${cm.cmno}" >
          </form>
        </div>
      </div>
    <br/>
<!-- footer -->
  <footer>
    <div class="row">
      <div class="col span-1-of-2">
        <ul class="footer-nav">
          <li>
            <a href="/Users/josephlee/Desktop/shoetudio_team_project/teamproject/index(final).html">Home</a
            >
          </li>
          <li>
            <a
              href="/Users/josephlee/Desktop/shoetudio_team_project/teamproject/about_us.html"
              >About Us</a
            >
          </li>
          <li><a href="#">Custom</a></li>
          <li><a href="#">Artists</a></li>
          <li><a href="#">Community</a></li>
        </ul>
      </div>
      <div class="col span-1-of-2">
        <ul class="social-icons">
          <li>
            <a href="#"><i class="ion-social-facebook"></i></a>
          </li>
          <li>
            <a href="#"><i class="ion-social-twitter"></i></a>
          </li>
          <li>
            <a href="#"><i class="ion-social-googleplus"></i></a>
          </li>
          <li>
            <a href="#"><i class="ion-social-instagram"></i></a>
          </li>
        </ul>
      </div>
    </div>
    <div class="row">
      <p>Copyright &copy; 2021 by Shoetudio. All rights reserved.</p>
    </div>
  </footer>
</body>


    <!-- jQuery and Bootstrap Bundle (includes Popper) -->
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
      crossorigin="anonymous"
    ></script>
    </html>
