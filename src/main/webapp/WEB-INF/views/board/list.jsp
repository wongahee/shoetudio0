<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:parseNumber var="cp" value="${param.cp}" />
<fmt:parseNumber var="sp" value="${(cp-1) / 10}" integerOnly="true" />
<fmt:parseNumber var="sp" value="${sp * 10 + 1}" />
<fmt:parseNumber var="ep" value="${sp + 9}" />

<fmt:parseNumber var="tp" value="${cmcnt / 16}" integerOnly="true" />
<c:if test="${(cmcnt % 16) > 0}" >
  <fmt:parseNumber var="tp" value="${tp + 1}" />
</c:if>

<!-- 글번호 -->
<fmt:parseNumber var="snum" value="${cmcnt - (cp - 1) * 16}" />

<!-- 페이지 링크 검색 불가능 -->
<c:set var="pglink" value="/community/list?cp=" />

<!-- 페이지 링크 검색 가능 -->
<c:if test="${not empty param.findkey}" >
  <c:set var="pglink" value="/community/find?findtype=${param.findtype}&findkey=${param.findkey}&cp=" />
</c:if>

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
      href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"
      rel="stylesheet"
    />
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
                href="/about"
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
            class="form-control col-4 border-primary" value="${param.findkey}"
          />&nbsp;
          <button type="button" class="search" name="findbtn" id="findbtn">
            <i class="ion-ios-search-strong"></i> 검색
          </button>
        </div>
      </div>
      <div class="col span-1-of-2">
        <c:if test="${not empty UID}" >
          <button type="button" class="new" id="writebtn">
            <i class="ion-ios-plus"></i> 새글쓰기
          </button>
        </c:if>
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

            <c:forEach var="cm" items="${cms}" >
            <tr class="table-row">
              <td>${snum}</td>
              <td>
                <c:if test="${fn:length(cm.title) gt 50}" >
                <a href="/community/view?cmno=${cm.cmno}">
                  &nbsp;&nbsp;&nbsp;&nbsp;${fn:substring(cm.title, 0, 50)}...&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                </c:if>
                <c:if test="${fn:length(cm.title) le 50}" >
                  <a href="/community/view?cmno=${cm.cmno}">
                    &nbsp;&nbsp;${cm.title}&nbsp;&nbsp;
                  </a>
                </c:if>
              </td>
              <td>${cm.userid}</td>
              <td>${fn:substring(cm.regdate, 0, 10)}</td>
              <td>${cm.thumbup}</td>
              <td>${cm.views}</td>
              <c:set var="snum" value="${snum - 1}" />
            </tr>
            </c:forEach>

          </tbody>
        </table>
      </div>
    </div>

    <div class="row" id="page">
      <div class="col span-4-of-5">
        <ul class="pagination">
          <li class="page-item <c:if test="${sp lt 11}"> disabled </c:if>" >
            <a href="${pglink}${sp-10}" class="page-link">
              <i class="ion-arrow-left-b"></i>이전</a
            >
          </li>

          <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
            <c:if test="${i le tp}" >
              <c:if test="${i eq cp}" >
                <li class="page-item active">
                  <a href="${pglink}${i}" class="page-link">${i}</a>
                </li>
              </c:if>
              <c:if test="${i ne cp}" >
                <li class="page-item active">
                  <a href="${pglink}${i}" class="page-link">${i}</a>
                </li>
              </c:if>
            </c:if>
          </c:forEach>

          <li class="page-item <c:if test="${ep gt tp}" > disabled </c:if> ">
            <a href="${pglink}${sp+10}" class="page-link"
              ><i class="ion-arrow-right-b"></i
            >다음</a>
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
