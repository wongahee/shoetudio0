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
      href="/css/board.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/css/header-modal.css"
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
    <title>Board</title>
  </head>
  <body>
    <!-- Header -->
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
    </header>
    <br/>
    <!-- 페이지 타이틀 -->
    <div class="row">
          <h2>Community<i class="ion-ios-chatboxes"></i></h2>
        <br/>
        <hr/>
      </div>

    <!-- 버튼 -->
    <br/>
    <div class="row">
        <button type="button" class="previous">
          <p><i class="ion-ios-arrow-back"></i>이전게시물</p>
          <button type="button" class="next">
            <p>다음게시물<i class="ion-ios-arrow-forward"></i></p>
            <button type="button" class="new">
              <i class="ion-ios-plus-empty"></i> 새글쓰기
    </div>
    <!-- 페이지 -->
    <div class="row">
  <section>
    <table>
      <tr id="title">
        <th><h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h2></th>
      </tr>
      <tr id="sub-title">
        <td  class="col span-1-of-2">zzyzzy</td>
        <td class="col span-1-of-2" id="time1">2021.05.21 11:11:11 / 22 / 33</td>
      </tr>
      <tr id="main">
        <td>Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
          eu.Maecenas luctus dignissim magna, vitae iaculis lorem
          ultricies eu.Maecenas luctus dignissim magna, vitae iaculis
          lorem ultricies eu.Maecenas luctus dignissim magna, vitae
          iaculis lorem ultricies eu.Maecenas luctus dignissim magna,
          vitae iaculis lorem ultricies eu.Maecenas luctus dignissim
          magna, vitae iaculis lorem ultricies eu.Maecenas luctus
          dignissim magna, vitae iaculis lorem ultricies eu.Maecenas
          luctus dignissim magna, vitae iaculis lorem ultricies
          eu.Maecenas luctus dignissim magna, vitae iaculis lorem
          ultricies eu.Maecenas luctus dignissim magna, vitae iaculis
          lorem ultricies eu.Maecenas luctus dignissim magna, vitae
          iaculis lorem ultricies eu.Maecenas luctus dignissim magna,
          vitae iaculis lorem ultricies eu.Maecenas luctus dignissim
          magna, vitae iaculis lorem ultricies eu.Maecenas luctus
          dignissim magna, vitae iaculis lorem ultricies eu.Maecenas
          luctus dignissim magna, vitae iaculis lorem ultricies
          eu.Maecenas luctus dignissim magna, vitae iaculis lorem
          ultricies eu.Maecenas luctus dignissim magna, vitae iaculis
          lorem ultricies eu.Maecenas luctus dignissim magna, vitae
          iaculis lorem ultricies eu.Maecenas luctus dignissim magna,
          vitae iaculis lorem ultricies eu.Maecenas luctus dignissim
          magna, vitae iaculis lorem ultricies eu.Maecenas luctus
          dignissim magna, vitae iaculis lorem ultricies eu.Maecenas
          luctus dignissim magna, vitae iaculis lorem ultricies
          eu.Maecenas luctus dignissim magna, vitae iaculis lorem
          ultricies eu.Maecenas luctus dignissim magna, vitae iaculis
          lorem ultricies eu.Maecenas luctus dignissim magna, vitae
          iaculis lorem ultricies eu.Maecenas luctus dignissim magna,
          vitae iaculis lorem ultricies eu.Maecenas luctus dignissim
          magna, vitae iaculis lorem ultricies eu.Maecenas luctus
          dignissim magna, vitae iaculis lorem ultricies eu.Maecenas
          luctus dignissim magna, vitae iaculis lorem ultricies
          eu.Maecenas luctus dignissim magna, vitae iaculis lorem
          ultricies eu.Maecenas luctus dignissim magna, vitae iaculis
          lorem ultricies eu.Maecenas luctus dignissim magna, vitae
          iaculis lorem ultricies eu.Maecenas luctus dignissim magna,
          vitae iaculis lorem ultricies eu.Maecenas luctus dignissim
          magna, vitae iaculis lorem ultricies eu.Maecenas luctus
          dignissim magna, vitae iaculis lorem ultricies eu.Maecenas
          luctus dignissim magna, vitae iaculis lorem ultricies
          eu.Maecenas luctus dignissim magna, vitae iaculis lorem
          ultricies eu.Maecenas luctus dignissim magna, vitae iaculis
          lorem ultricies eu.Maecenas luctus dignissim magna, vitae
          iaculis lorem ultricies eu.</td>
      </tr>
    </table>
  </section>

    <hr/>
    <br/>
        <!-- 수정하기 & 삭제하기 버튼 -->
<%--    <div class="row">--%>
<%--        <button type="button" class="btn1">--%>
<%--          <i class="ion-ios-gear"></i> 수정하기--%>
<%--        </button>--%>
<%--        <button type="button" class="btn2">--%>
<%--          <i class="ion-trash-a"></i> 삭제하기--%>
<%--        </button>--%>
<%--        <button type="button" class="btn3">--%>
<%--          <i class="ion-clipboard" id="list"></i> 목록으로--%>
<%--        </button>--%>
<%--  </div>--%>
    <div class="row">
      <button type="button" class="btn1">
        <p><i class="ion-ios-gear"></i>Modify</p>
        <button type="button" class="btn2">
          <p><i class="ion-trash-a"></i>Delete</p>
          <button type="button" class="btn3">
            <i class="ion-heart"></i>좋아요
    </div>
    <br/>
</div>

<%--  <!-- 댓글 -->--%>
<%--  <div>--%>
<%--  <div class="row">--%>
<%--    <h3>--%>
<%--      <i class="ion-ios-chatboxes"></i> 나도 한마디--%>
<%--    </h3>--%>
<%--    <br/>--%>
<%--    <hr/>--%>
<%--  </div>--%>
<%--  <div class="row">--%>
<%--    <table class="row">--%>
<%--      <div>--%>
<%--        <tr class="row">--%>
<%--          <td class="col span-1-of-3" id="creator"><h4>zzyzzy</h4></td>--%>
<%--          <td class="row">--%>
<%--          <div class="col span-2-of-3" id="time2">--%>
<%--            <div class="col span-1-of-2"><p>2021.05.21 10:10:10<p/></div>--%>
<%--            <div class="col span-1-of-2" style="padding-left: 100px">--%>
<%--              <button class="btn4 trigger1">reply</button>--%>
<%--              <button class="btn5 trigger2" style="margin-left: 10px">delete</button></div>--%>
<%--          </div>--%>
<%--          <p class="col span-2-of-3" id="context">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<p>--%>
<%--          </td>--%>
<%--        </tr>--%>
<%--      </div>--%>
<%--    </table>--%>
<%--  </div>--%>

<%--  &lt;%&ndash;모달&ndash;%&gt;--%>
<%--    <div class="modal1">--%>
<%--      <div class="modal-content1">--%>
<%--        <span class="close-button1">&times;</span>--%>
<%--        <form>--%>
<%--        <p stong>내용을 입력하세요</p>--%>
<%--        <br/>--%>
<%--        <textarea rows="12" placeholder="내용을 작성해주세요" style="width: 22rem"></textarea>--%>
<%--        <br/>--%>
<%--        <br/>--%>
<%--          <div class="modal-button">--%>
<%--        <button class="btn6">confirm</button>--%>
<%--        <button class="btn7">cancel</button>--%>
<%--          </div>--%>
<%--        </form>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <div class="modal2">--%>
<%--      <div class="modal-content2">--%>
<%--        <span class="close-button2">&times;</span>--%>
<%--        <form>--%>
<%--          <h1>내용을 삭제하시겠습니까?</h1>--%>
<%--          <br/>--%>
<%--          <br/>--%>
<%--          <div class="modal-button">--%>
<%--            <button class="btn6">YES</button>--%>
<%--            <button class="btn7">NO</button>--%>
<%--          </div>--%>
<%--        </form>--%>

<%--      </div>--%>
<%--    </div>--%>

<%--  </div>--%>
<%--    --%>
<%--  <!-- 댓글 작성 -->--%>
<%--    <div class="row">--%>
<%--      <hr/>--%>
<%--      <div>--%>
<%--       <form name="replyfrm" id="replyfrm" class="row">--%>
<%--        <label class="col span-1-of-6" id="writer">User</label>--%>
<%--        <textarea class="col span-3-of-4"--%>
<%--        name="reply"--%>
<%--        id="reply"--%>
<%--        rows="10"--%>
<%--        style="width: 600px;"></textarea>--%>
<%--        &nbsp;&nbsp;--%>
<%--        <button class="col span-1-of-4" id="button"><i class="ion-ios-chatboxes"></i>Comment</button>--%>
<%--        </form>--%>
<%--        </div>--%>
<%--      </div>--%>

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
    <%-- 댓글 모달 --%>
    <script src="/js/modal.js"></script>
</html>
