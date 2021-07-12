<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fnames" value="${fn:split(cm.fnames, '/')}" />
<c:set var="baseURL" value="http://localhost/cdn/" />

<c:if test="${param.cmno eq 'null' or empty param.cmno }" >
  <script>
    alert('글이 없습니다.');
    location.href='/community/list?cp=1';
  </script>
</c:if>

<c:set var="newChar" value="
" scope="application" />
<c:set var="br" value="<br/>" scope="application" />

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
            onclick="location.href='/#'"
          />
          <ul class="main-nav">
            <li>
              <a href="/about">About Us</a>
            </li>
            <li><a href="/custom/list">Custom</a></li>
            <li><a href="/artist/list">Artist</a></li>
            <li><a href="/community/list?cp=1">Community</a></li>
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
        <button type="button" class="previous" id="preboard" >
          <p><i class="ion-ios-arrow-back"></i>이전게시물</p></button>
          <button type="button" class="next" id="nxtboard">
            <p>다음게시물<i class="ion-ios-arrow-forward"></i></p></button>
          <button type="button" class="btn btn-light" id="listbtn">
            <i class="ion-clipboard" id="list"></i> 목록으로
          </button>
            <button type="button" class="new" id="writebtn">
              <i class="ion-ios-plus-empty"></i> 새글쓰기</button>
    </div>
    <!-- 페이지 -->
    <div class="row">
  <section>
    <table>
      <tr id="title">
        <th style="width: 2000px;"><h2>${cm.title}</h2></th>
      </tr>
      <tr id="sub-title">
        <td  class="col span-1-of-2">${cm.userid}</td>
        <td class="col span-1-of-2" id="time1" style="text-align: right" >${cm.regdate} / ${cm.thumbup} / ${cm.views}</td>
      </tr>
      <tr id="main">
        <td>
          <div>
            ${fn:replace(cm.contents, newChar, br)}

          <c:forEach var="f" items="${fnames}">
            <c:if test="${f ne '-'}">
              <c:set var="pos" value="${fn:indexOf(f,'.')}" />
              <c:set var="fname" value="${fn:substring(f, 0, pos)}" />
              <c:set var="fext" value="${fn:substring(f, pos+1, fn:length(f))}" />
              <div>
                <img src="${baseURL}${fname}${cm.uuid}.${fext}" class="img-fluid" >
              </div>
            </c:if>
          </c:forEach>
          </div>
        </td>
      </tr>
    </table>
  </section>

    <hr/>
    <br/>
        
    <div class="row">
      <c:if test="${not empty UID and UID eq cm.userid}" >
      <button type="button" class="btn1" id="modifybtncm">
        <p><i class="ion-ios-gear"></i>Modify</p></button>
        <button type="button" class="btn2" id="deletebtncm">
          <p><i class="ion-trash-a"></i>Delete</p></button>

          <button type="button" class="btn3" id="commbtn">
            <i class="ion-heart"></i>좋아요</button>
      </c:if>
    </div>
    <br/>
</div>
    
  <!-- 댓글 -->
  <div>
  <div class="row">
    <h3>
      <i class="ion-ios-chatboxes"></i> 댓글
    </h3>
    <br/>
    <hr/>
  </div>
  <div class="row">
    <table class="row">
      <div>
        <c:forEach var="r" items="${rps}" >
        <tr class="row">
              <td class="col span-1-of-12" id="creator"><h4>${r.userid}</h4></td>
              <td class="row">
              <div class="col span-3-of-12" id="time2">
                <div class="col span-1-of-2"><p>${r.regdate}<p/></div>
                <%--<c:if test="${not empty UID and UID eq r.userid}" >
                  <div class="col span-1-of-2" style="padding-left: 100px">
                    <button class="btn4 trigger1" id="remodi"
                            data-target="#replymodifrm">modify</button>
                    <button class="btn5" style="margin-left: 10px"
                            id="redele" onclick="showmodal('${r.rno}')">delete</button></div>
                </c:if>--%>
              </div>
              <p class="col span-2-of-3" id="context" name="reply">${r.reply}<p>
              </td>
        </tr>
        </c:forEach>

          </td>
        </tr>
      </div>

    </table>
  </div>


  <!-- 댓글 작성 -->
    <div class="row">
      <hr/>
      <div>
       <form name="replyfrm" id="replyfrm" class="row">
        <label class="col span-1-of-6" id="writer" value="${UID}">User</label>
        <textarea class="col span-3-of-4" name="reply" id="reply" rows="10" style="width: 600px;"></textarea>
        &nbsp;&nbsp;
         <c:if test="${not empty UID}" >
          <button class="col span-1-of-4" id="rpbtn" name="rpbtn" ><i class="ion-ios-chatboxes"></i>Comment</button>
         </c:if>
         <input type="hidden" name="userid" value="${UID}" />
         <input type="hidden" id="cmno" name="cmno" value="${param.cmno}" />
         <input type="hidden" name="rpno" id="rpno" >
        </form>
        </div>
      </div>

  <!-- footer -->
  <footer>
  <div class="row">
    <div class="col span-1-of-2">
      <ul class="footer-nav">
        <li><a href="/#">Home</a></li>
        <li><a href="/about" >About Us</a></li>
        <li><a href="/custom/list">Custom</a></li>
        <li><a href="/artist/list">Artist</a></li>
        <li><a href="/community/list?cp=1">Community</a></li>
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
