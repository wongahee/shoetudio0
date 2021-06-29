<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="thumbURL" value="http://localhost/thumb/" />

<fmt:parseNumber var="cp" value="${param.cp}" />
<fmt:parseNumber var="sp" value="${(cp - 1 ) / 10}" integerOnly="true" />
<fmt:parseNumber var="sp" value="${sp * 10 + 1}" />
<fmt:parseNumber var="ep" value="${sp + 9}" />

<fmt:parseNumber var="tp" value="${awcnt / 12}" integerOnly="true" />
<c:if test="${(awcnt % 12) > 0}">
    <fmt:parseNumber var="tp" value="${tp + 1}" />
</c:if>

<fmt:parseNumber var="snum" value="${awcnt - (cp - 1) * 12}" />

<c:set var="pglink" value="/artist/list?cp=" />

<c:if test="${not empty param.findkey}">
    <c:set var="pglink" value="/artist/find?findtype=${param.findtype}&findkey=${param.findkey}&cp=" />
</c:if>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/templatemo.css" />
<link rel="stylesheet" type="text/css" href="/css/header_footer.css" />
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

<header>
    <nav>
        <div class="row">
            <div class="col-12">
            <img
                    src="/img/Shoetudio_logo.png"
                    alt="Shoetudio"
                    class="logo"
                    onclick="location.href='/#'"
            />
            <ul class="main-nav">
                <li><a href="/about">About Us</a></li>
                <li><a href="/custom/list">Custom</a></li>
                <li><a href="/artist/list">Artist</a></li>
                <li><a href="/community/list">Community</a></li>
            </ul>
            </div>
        </div>
    </nav>
</header>


<!-- Start Content -->
<div class="container">
    <div class="row">
        <div class="col-10">
            <div class="form-group row mt-2 mb-2">
                <select class="form-control col-3 border-info" name="findtype" id="findtype" style="margin-right: 20px; margin-top: 10px">
                    <option value="awtitle">Title</option>
                    <option value="titcont">Title + Contents</option>
                    <option value="userid">Artist</option>
                    <option value="awcont">Contents</option>
                </select>&nbsp;
                <input type="text" name="findkey" id="findkey"
                       class="form-control col-4 border-info"
                       value="${param.findkey}" style="height: max-content">&nbsp;
                <button type="button" id="findbtn"
                        class="btn btn-info"style="margin-top: 10px; margin-left: 10px" ><i class="fas fa-search"></i> Search</button>
            </div>
        </div>  <!--검색-->

        <div class="col-2 text-right mt-2 mb-2">  <!--새글쓰기-->
                <button type="button" class="btn btn-light" id="writeartbtn">
                <i class="ion-ios-plus">&nbsp;</i> New</button></div>
        </div>

    <!-- 리스트 시작 -->
    <div class="row">
        <c:forEach var="aw" items="${aws}">
        <div class="col-md-3 mt-2">
            <div class="card mb-6 product-wap rounded-0">
                <c:set var="f" value="${fn:split(aw.fnames, '/')[0]}" />
                <c:set var="pos" value="${fn:indexOf(f, '.')}" />
                <c:set var="fname" value="${fn:substring(f, 0, pos)}" />
                <c:set var="fext" value="${fn:substring(f, pos + 1, fn:length(f))}" />

                <div class="card rounded-0">
                    <img class="card-img rounded-0 img-fluid" src="${thumbURL}small_${aw.awno}_${fname}${aw.uuid}.${fext}" onclick="showimg('${aw.awno}')" style="cursor: pointer">
                </div>
                <div class="card-body">
                    <span onclick="location.href='/artist/view?awno=${aw.awno}'" style="cursor: pointer">${aw.awtitle}</span>
                    <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                        <p class="card-text">${aw.userid}<p>
                        <span class="">${fn:substring(aw.awregd, 0, 10)}</span>
                    </ul>
                    <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                        <p class="card-text"><i class="ion-heart"></i> ${aw.awthumbup}<p>
                        <span class="pushright"><i class="fas fa-eye"></i> ${aw.awviews}</span>
                    </ul>
                    <c:set var="snum" value="${snum - 1}" />
                </div>

            </div>
        </div>
        </c:forEach>
    </div>
    <input type="hidden" name="UID" value="${u.userid}">
    <!-- 리스트 끝 -->
</div>

<!-- 페이지 네이션 시작-->
<div class="row">
    <div class="col-12 mt-2 mb-3">
        <ul class="pagination justify-content-center">
            <li class="page-item <c:if test="${sp gt 11}"> disabled </c:if>"><a href="${pglink}${sp - 10}" class="page-link">이전</a></li>

            <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                <c:if test="${i le tp}">
                    <c:if test="${i eq cp}">
                        <li class="page-item active">
                            <a href="${pglink}${i}" class="page-link">${i}</a>
                        </li>
                    </c:if>

                    <c:if test="${i ne cp}">
                        <li class="page-item">
                            <a href="${pglink}${i}" class="page-link">${i}</a>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>

            <li class="page-item <c:if test="${ep gt tp}"> disabled </c:if>"><a href="${pglink}${sp + 10}" class="page-link">다음</a></li>
        </ul>
    </div>
</div>
<!-- 페이지 네이션 끝-->

<footer>
    <div class="row">
        <div class="col-12">
            <ul class="footer-nav">
                <li><a href="/#">Home</a></li>
                <li><a href="/about">About Us</a></li>
                <li><a href="/custom/list">Custom</a></li>
                <li><a href="/artist/list">Artist</a></li>
                <li><a href="/board/list">Community</a></li>
            </ul>
        </div>
        <div class="col-12">
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


