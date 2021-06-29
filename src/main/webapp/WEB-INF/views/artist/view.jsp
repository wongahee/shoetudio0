<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fnames" value="${fn:split(aw.fnames, '/')}" />
<c:set var="baseURL" value="http://localhost/cdn/" />

<c:set var="newChar" value="
" scope="application" />

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/templatemo.css" />
<link rel="stylesheet" type="text/css" href="/css/header_footer.css" />
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

<style>
    #order {
        height: 850px;
        border: none;
        position: sticky;
        position:  -webkit-sticky;
        top: -30px;
    }
    tp {
        /*word-wrap: break-word;*/
        /*height: 300px;*/
        line-height: 5px;
    }

</style>

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
                <li><a href="/about">About Us</a></li>
                <li><a href="/custom/list">Custom</a></li>
                <li><a href="/artist/list">Artist</a></li>
                <li><a href="/board/list">Community</a></li>
            </ul>
        </div>
    </nav>
</header>

<!-- Open Content -->
<section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mt-5">
                <div class="row">

                    <div class="col-2 text-right offset-9">
                        <button type="button" class="btn btn-dark" id="listartbtn"><a href="/aritst/list"></a>
                            <i class="ion-ios-toggle"></i>&nbsp;To list</button></div>

                    <div class="col-md-8 bg-light">
                        <section class="py-3">
                            <div id="Slider">

                                <c:forEach var="f" items="${fnames}">
                                    <c:if test="${f ne '-'}">
                                        <c:set var="pos" value="${fn:indexOf(f, '.')}" />
                                        <c:set var="fname" value="${fn:substring(f, 0, pos)}" />
                                        <c:set var="fext" value="${fn:substring(f, pos + 1, fn:length(f))}" />
                                        <div>
                                            <img src="${baseURL}${fname}${aw.uuid}.${fext}" class="img-fluid">
                                        </div>
                                    </c:if>
                                </c:forEach>

                            </div>
                        </section>
                    </div>

                    <div class="col-md-4 mt-3" id="order"> <!--작업내용 시작-->
                        <div class="card">
                            <div class="card-header">
                                <h1 class="h2">${aw.awtitle}</h1>
                                <h4 style="text-align: right; margin-bottom: -18px;">${aw.userid}</h4>
                            </div>
                            <div class="card-body" style="overflow:hidden;word-wrap: break-word;">
                                <ul class="list-inline">
                                    <div style="text-align: right; margin-bottom: -45px">
                                        <i class="far fa-eye">&nbsp;</i>
                                        <li class="list-inline-item">
                                            <p>${aw.awviews}<p>
                                        </li>
                                    </div>
                                    <br>
                                <li class="list-inline-item">
                                    <h6>Model: </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>${aw.shoetype}<p>
                                </li>
                                <br>
                                <li class="list-inline-item">
                                    <h6>production period: </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>${aw.custperiod}</p>
                                </li>
                                <br>
                                <li class="list-inline-item">
                                    <h6>Work Cost: </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>&#8361;&nbsp;${aw.shoecost}</p>
                                </li>
                                <br>
                                <li class="list-inline-item">
                                    <h6>shipping fee:</h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>&#8361;&nbsp;${aw.shippingfee}</p>
                                </li>

                                <div>
                                <li class="list-inline-item" style="margin-bottom: 20px">
                                    <h6>To say :</h6>
                                </li>
                                </div>
                                </ul>
                                    <li class="list-inline-item">
                                        <p class="tp">${aw.awcont}</p>
                                    </li>
                            </div>

                                <div class="card-footer">
                                    <div class="row">
                                    <div class="col-md-4">
                                        <button type="button" class="btn btn-primary btn-xs" id="thumbup">
                                            <span style="font-size:30px;"><i class="ion-heart"></i> ${aw.awthumbup}</span> </button>
                                    </div>
                                    <div class="col-md-8">
                                        <button type="button" class="btn btn-warning btn-xs" id="Meetingbtn" data-toggle="modal" data-target="#Meetingfrm">
                                            <span style="font-size:30px"><i class="fas fa-comments"></i> Contact</span></button>
                                    </div>
                                    </div>
                                </div>
                        </div>
                    </div><!--작업내용 끝-->

                    <div class="col-4 offset-8">
                        <c:if test="${aw.utype eq '1' and UID eq aw.userid}">
                            <button type="button"
                                    class="btn btn-success text-white" id="modifybtn">
                                <i class="fas fa-edit"></i>&nbsp;Modify</button>
                            <button type="button" class="btn btn-danger" id="deletebtn">
                                <i class="fas fa-trash-alt"></i>&nbsp;Delete</button>
                        </c:if>
                    </div>

                </div>
            </div>
        </div>
        <!-- col end -->
        <input type="hidden" id="awno" value="${param.awno}" >
        <input type="hidden" id="utype" value="${param.utype}" >
    </div>
</section>
<!-- Close Content -->


<!--대화 모달-->
<div class="modal" id="Meetingfrm" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #000000">
                <h3 class="text-white">Meeting</h3>
                <button type="button" class="btn btn-light" id="mtexit">
                    <i class="fas fa-times"></i></button>
            </div>
            <div class="modal-body">
                <form name="Mtfrm" id="Mtfrm" method="post">
                    <div class="form-group row text-dark">
                        <label for="mtitle" class="col-form-label col-3 text-right" style="margin-top: 10px">
                            Title</label>
                        <input type="text" name="mtitle" id="mtitle"
                               class="form-control col-md-8
                               border-dark">
                    </div>
                    <div class="form-group row text-dark">
                        <label for="userid" class="col-form-label col-3 text-right" style="margin-top: 10px">
                            User</label>
                        <input type="text" name="userid" id="userid"
                               class="form-control col-md-8
                               border-dark">
                    </div>
                    <div class="form-group row text-dark">
                        <label for="uemail" class="col-form-label col-3 text-right" style="margin-top: 10px">
                            E-mail</label>
                        <input type="text" name="uemail" id="uemail"
                               class="form-control col-md-8
                               border-dark">
                    </div>
                    <div class="form-group row text-dark">
                        <label for="mtcont" class="col-form-label col-4 text-left">
                            Questions</label>
                        <textarea id="mtcont" name="mtcont" class="border-dark form-control col-md-12" rows="15"></textarea>
                    </div>
                    <hr class="col-12">
                    <div class="form-group row justify-content-center">
                        <button type="button"
                                class="btn btn-secondary text-white" id="Sendbtn" style="margin-right: 30px">Send</button>

                        <button type="reset"
                                class="btn btn-info text-white">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="row">
        <div class="col span-1-of-2">
            <ul class="footer-nav">
                <li><a href="/index">Home</a></li>
                <li><a href="/about">About Us</a></li>
                <li><a href="/custom/list">Custom</a></li>
                <li><a href="/artist/list">Artist</a></li>
                <li><a href="/community/list">Community</a></li>
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

