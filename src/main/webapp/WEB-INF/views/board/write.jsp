<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          href="/css/header-modal.css"
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
  <title>게시판-새글쓰기</title>
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
          <a
                  href="/Users/josephlee/Desktop/shoetudio_team_project/teamproject/about_us.html"
          >About Us</a
          >
        </li>
        <li><a href="#">Custom</a></li>
        <li><a href="#">Artist</a></li>
        <li><a href="/Users/josephlee/Desktop/shoetudio_team_project/teamproject/board/list.html">Community</a></li>
        <li><a class="trigger3" id="11" style="cursor: pointer; color: white; font-size: 20px">Log In</a></li>
        <li><a class="trigger4" id="22" style="cursor: pointer; color: white; font-size: 20px">Log Out</a></li>
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
    <h3><i class="ion-ios-plus"> 새글 쓰기</i></h3>
  </div>
  <div class="col span-2-of-3" style="padding-left: 500px">
    <button type="button" class="button">
      <i class="ion-ios-toggle"></i> 목록으로
    </button>
  </div>
</div>

<div>
  <form name="boardfrm" id="boardfrm">
    <div class="row">
      <label
              for="title"
              class="col span-1-of-3"
              id="title"
              style="padding-left: 140px"
      >
        제목</label
      >
      <input
              type="text"
              name="title"
              id="title"
              class="col span-2-of-3"
              style="width: 600px"
      />
    </div>
    <div class="row">
      <label
              for="userid"
              class="col span-1-of-3"
              id="creator"
              style="padding-left: 135px"
      >
        작성자</label
      >
      <input
              type="text"
              name="userid"
              id="userid"
              class="col span-2-of-3"
              style="width: 600px"
              readonly
      />
    </div>
    <div class="form-group row">
      <label
              for="contents"
              class="col span-1-of-3"
              id="context"
              style="padding-left: 130px"
      >
        본문내용</label
      >
      <textarea
              id="contents"
              name="contents"
              rows="15"
              class="col span-2-of-3"
              style="width: 600px"
      ></textarea>
      <div class="row">
        <label
                for="title"
                class="col span-1-of-3"
                id="title"
                style="padding-left: 140px"
        >
          첨부파일 1</label
        >
        <input
                type="file"
                name="attachment_file"
                id="attachment_file"
                class="col span-2-of-3"
                style="width: 600px"
        />
      </div>
      <div class="row">
        <label
                for="title"
                class="col span-1-of-3"
                id="title"
                style="padding-left: 140px"
        >
          첨부파일 2</label
        >
        <input
                type="file"
                name="attachment_file"
                id="attachment_file"
                class="col span-2-of-3"
                style="width: 600px"
        />
      </div>
      <div class="row">
        <label
                for="title"
                class="col span-1-of-3"
                id="title"
                style="padding-left: 140px"
        >
          첨부파일 3</label
        >
        <input
                type="file"
                name="attachment_file"
                id="attachment_file"
                class="col span-2-of-3"
                style="width: 600px"
        />
      </div>
      <div class="row">
        <label
                for="title"
                class="col span-1-of-3"
                id="title"
                style="padding-left: 140px"
        >
          첨부파일 4</label
        >
        <input
                type="file"
                name="attachment_file"
                id="attachment_file"
                class="col span-2-of-3"
                style="width: 600px"
        />
      </div>
      <div class="row">
        <label
                for="title"
                class="col span-1-of-3"
                id="title"
                style="padding-left: 140px"
        >
          첨부파일 5</label
        >
        <input
                type="file"
                name="attachment_file"
                id="attachment_file"
                class="col span-2-of-3"
                style="width: 600px"
        />
      </div>
    </div>
    <div class="form-group row">
      <label class="col span-1-of-3"
             id="recaptcha"
             style="padding-left: 120px">
        자동가입방지</label
      >
      <img src="/img/google_recaptcha.gif" width="40%" />
    </div>

    <br/>
    <div class="row" id="button-section">
      <hr/>
      <div class="col span-3-of-4" id="button" >
        <button type="button" class="button1" style="height: 40px; width:120px; border-radius: 10px">
          <i class="ion-ios-checkmark"></i> 입력완료
        </button>
        <button type="button" class="button2" style="height: 40px; width:120px; border-radius: 10px">
          <i class="ion-ios-close"></i> 다시입력
        </button>
      </div>
    </div>
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
          <a
                  href="/Users/josephlee/Desktop/shoetudio_team_project/teamproject/index(final).html"
          >Home</a
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
<%-- 로그인 모달--%>
<div class="modal3">
  <div class="modal-content3" style="height: 250px">
    <span class="close-button3">&times;</span>
    <form>
      <p stong>LOG IN</p>
      <br/>
      <div style="text-align: center">
        <h6>아이디 :&nbsp;&nbsp;&nbsp; <input type="text" placeholder="아이디를 입력해주세요" style="width: 300px"> </h6>
      </div>
      <br/>
      <div style="text-align: center">
        <h6>비밀번호 : <input type="password" placeholder="비밀번호를 입력해주세요" style="width: 300px; height: 38px"> </h6>
      </div>
      <br/>
      <%--          <div class="modal-button row" style="text-align: center">--%>
      <button class="lgm-btn1 modal-button2">confirm</button>
      <button class="lgm-btn2">cancel</button>
      <%--          </div>--%>
    </form>
  </div>
</div>
<div class="modal4">
  <div class="modal-content4" style="height: 200px">
    <span class="close-button4">&times;</span>
    <form>
      <div style="text-align: center">
        <h2>로그아웃 하시겠습니까?</h2>
      </div>
      <br/>
      <div class="modal-button3" style="text-align: center">
        <button class="lgm-btn1">YES</button>
        <button class="lgm-btn2">NO</button>
      </div>
    </form>

  </div>
</div>
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
