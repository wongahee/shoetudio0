<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="thumbURL" value="http://localhost/thumb/" />

<fmt:formatNumber value="${aw.shoecost}" groupingUsed="true" />
<fmt:formatNumber value="${aw.shippingfee}" groupingUsed="true" />

<script src="https://www.google.com/recaptcha/api.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/templatemo.css" />
<link rel="stylesheet" type="text/css" href="/css/header_footer.css" />
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

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
                <li><a href="/community/list?cmno=1">Community</a></li>
            </ul>
        </div>
    </nav>
</header>

<!-- 컨테이너 시작-->
<div class="container mb-3">
    <div id="main">
        <div class="col-2 text-right offset-9 mt-2 mb-2">
            <button type="button" class="btn btn-light" id="listartbtn">
                <i class="ion-ios-toggle"></i>&nbsp;To list</button></div>

        <div class="card card-body bg-light col-10 offset-1">
            <form id="artfrm" name="artfrm">

                <div class="form-group row" style="margin-bottom: 10px">
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="awtitle" style="margin-top: 10px">Title</label>
                    <input type="text" name="awtitle" id="awtitle"
                           class="border-light form-control col-9">
                </div>

                <div class="form-group row" style="margin-bottom: 10px">
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="userid" style="margin-top: 10px">Writer</label>
                    <input type="text" name="userid" id="userid"
                           class="border-light form-control col-9" readonly value="${UID}">
                </div>

                <div class="form-group row" style="margin-bottom: 15px">
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="shoetype" style="margin-top: 10px">Model</label>
                    <input type="text" name="shoetype" id="shoetype"
                           class="border-light form-control col-9" >
                </div>

                <div class="form-group row">
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="custperiod">Production Period</label>
                    <input type="text" name="custperiod" id="custperiod"
                           class="border-light form-control col-9" >
                </div>

                <div class="form-group row" style="margin-bottom: 10px">
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="shoecost" style="margin-top: 10px">Work Cost</label>
                    <input type="text" name="shoecost" id="shoecost"
                           class="border-light form-control col-9" >
                </div>

                <div class="form-group row" style="margin-bottom: 20px" >
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="shippingfee" style="margin-top: 10px">Shipping fee</label>
                    <input type="text" name="shippingfee" id="shippingfee"
                           class="border-light form-control col-9">
                </div>

                <div class="form-group row" style="margin-bottom: 15px">
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="awcont" style="margin-top: 110px">Contents</label>
                    <textarea id="awcont" name="awcont" class="border-dark form-control col-9" rows="10"></textarea>
                </div>

                <div class="form-group row">
                    <label class="col-2 col-form-label text-dark
                                              text-right" for="file1">Add File</label>
                    <div class="custom-file col-9">
                        <input type="file" name="file" id="file1"
                               class="custom-file-input">
                        <label class="custom-file-label">Add File...</label>
                    </div>
                    <div class="custom-file col-9 offset-2">
                        <input type="file" name="file" id="file2"
                               class="custom-file-input">
                        <label class="custom-file-label">Add File...</label>
                    </div>
                    <div class="custom-file col-9 offset-2">
                        <input type="file" name="file" id="file3"
                               class="custom-file-input">
                        <label class="custom-file-label">Add File...</label>
                    </div>
                    <div class="custom-file col-9 offset-2">
                        <input type="file" name="file" id="file4"
                               class="custom-file-input">
                        <label class="custom-file-label">Add File...</label>
                    </div>
                    <div class="custom-file col-9 offset-2">
                        <input type="file" name="file" id="file5"
                               class="custom-file-input">
                        <label class="custom-file-label">Add File...</label>
                    </div>
                </div>

                <div class="form-group row" style="margin-top: 10px"> <!-- 자동방지 시작 -->
                    <label class="col-2 col-form-label text-dark
                                              text-right" style="margin-top: 15px">Recaptcha</label>
                    <div class="g-recaptcha"
                         data-sitekey="6LdwIwgbAAAAADTTDIJUsgs3xT5Th88IzbYCx8Sx"></div>
                    <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                </div> <!-- 자동방지 종료 -->

                <div class="form-group row"> <!-- 버튼 시작-->
                    <hr class="col-10">
                    <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary"
                                id="newartbtn"><i class="fas fa-check"></i>OK</button>
                        <button type="reset" class="btn btn-danger"
                                id="cancelbtn"><i class="fas fa-times"></i>Reset</button>
                    </div>
                </div> <!-- 버튼 종료-->

            </form>
        </div>
    </div>
    <input type="hidden" name="userid" value="${UID}" >
</div>
<!-- 컨테이너 끝-->

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
