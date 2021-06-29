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
      href="/css/list.css"
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
            rel="stylesheet"
            type="text/css"
            href="/css/header-modal.css"
    />
    <link
      href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <style>

    </style>
    <script src="https://use.fontawesome.com/6a4ab084c1.js"></script>
    <title>list</title>
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
            <li><a href="#">Community</a></li>
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

    <!-- 검색, 버튼 -->
    <div class="row">
      <div class="col span-1-of-2">
        <div class="form-group row">
          <select class="select" name="findtype" id="findtype">
            <option value="title">제목</option>
            <option value="titcont">제목+내용</option>
            <option value="userid">작성자</option>
            <option value="contents">내용</option></select
          >&nbsp;
          <input
            type="text"
            name="findkey"
            id="findkey"
            class="form-control col-4 border-primary"
          />&nbsp;
          <button type="button" class="search">
            <i class="ion-ios-search-strong"></i> 검색
          </button>
        </div>
      </div>
      <div class="col span-1-of-2">
        <button type="button" class="new">
          <i class="ion-ios-plus"></i> 새글쓰기
        </button>
      </div>
    </div>

    <!-- 페이지네이션  -->
    <div class="row">
      <div class="col span-3-of-3">
        <table>
          <thead style="background: #cfeec3">
            <tr>
              <th style="width: 7%">번호</th>
              <th style="">제목</th>
              <th style="width: 12%">작성자</th>
              <th style="width: 10%">작성일</th>
              <th style="width: 7%">추천</th>
              <th style="width: 7%">조회</th>
            </tr>
          </thead>
          <tbody style="background: #e9e9e9">
            <tr>
              <th>공지</th>
              <th>
                <span>Hot</span>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              </th>
              <th>운영자</th>
              <th>2021.05.21</th>
              <th>10</th>
              <th>521</th>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                <a href="#">
                  Maecenas luctus dignissim magna, vitae iaculis lorem  ultricies eu.
                  Maecenas luctus dignissim magna, vitae iaculis lorem ultricies eu.
                  Maecenas luctus dignissim magna, vitae iaculis lorem ultricies eu.
                  Maecenas luctus dignissim magna, vitae iaculis lorem ultricies eu.</a>
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultriciesdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
            <tr class="table-row">
              <td>1</td>
              <td>
                Maecenas luctus dignissim magna, vitae iaculis lorem ultricies
                eu.
              </td>
              <td>zzyzzy</td>
              <td>2021.03.15</td>
              <td>15</td>
              <td>315</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="row" id="page">
      <div class="col span-4-of-5">
        <ul class="pagination">
          <li class="page-item">
            <a href="#" class="page-link"
              ><i class="ion-arrow-left-b"></i>이전</a
            >
          </li>
          <li class="page-item active">
            <a href="#" class="page-link">1</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">2</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">3</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">4</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">5</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">6</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">7</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">8</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">9</a>
          </li>
          <li class="page-item">
            <a href="#" class="page-link">10</a>
          </li>
          <li class="page-item">
            다음<a href="#" class="page-link"
              ><i class="ion-arrow-right-b"></i
            ></a>
          </li>
        </ul>
      </div>
    </div>
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
            <li>
              <a
                href="/Users/josephlee/Desktop/shoetudio_team_project/teamproject/board/list.html"
                >Community</a
              >
            </li>
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

  <script>
    $("#newbdbtn").click(function () {
      location.href = "write.jsp";
    });
    $("#joinbtn").click(function () {
      location.href = "/join/agree.jsp";
    });
  </script>
</html>
