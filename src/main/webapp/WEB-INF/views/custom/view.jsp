<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/templatemo.css" />
<link rel="stylesheet" type="text/css" href="/css/header_footer.css" />
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<link rel="stylesheet" type="text/css" href="/css/header-modal.css"/>

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


<!-- 본문 시작 -->
<section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mt-5">
                <div class="row">

                    <div class="col-md-6 ">
                        <img class="card-img img-fluid" src="/img/custom1.png" alt="Card image cap">
                    </div>

                    <div class="col-md-6">
                        <img class="card-img img-fluid" src="/img/custom2.png" alt="Card image cap">
                    </div>

                    <div class="col-md-6 mt-5">
                        <img class="card-img img-fluid" src="/img/custom3.png" alt="Card image cap">

                    </div>
                    <div class="col-md-6 mt-5">
                        <img class="card-img img-fluid" src="/img/custom4.png" alt="Card image cap">
                    </div>
                </div>
            </div>
            <!-- col end -->
            <div class="col-lg-0 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h1 class="h2">Custom Pride Chuck Taylor All Star By You</h1>
                        <br>
                        <h6>Description:</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.</p>

                        <h6>Specification:</h6>
                        <ul class="list-unstyled pb-3">
                            <li>Lorem ipsum dolor sit</li>
                            <li>Amet, consectetur</li>
                            <li>Adipiscing elit,set</li>
                            <li>Duis aute irure</li>
                            <li>Ut enim ad minim</li>
                            <li>Dolore magna aliqua</li>
                            <li>Excepteur sint</li>
                        </ul>

                        <div class="row">
                            <div class="col-md-6" style="padding-left: 120px;">
                                <button type="button" class="btn btn-info btn-lg" name="Edit" id="HEdit" onclick="location.href='hEditDesign' ">
                                    <img src="/img/high.png" alt="Card image cap">High Edit Design</button>
                            </div>
                            <div class="col-md-6" style="padding-left: 120px">
                                <button type="button" class="btn btn-info btn-lg" name="Edit" id="LEdit" onclick="location.href='lEditDesign' ">
                                    <img src="/img/low.png" alt="Card image cap">Low Edit Design</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


</section>
<!-- 본문 끝 -->

<!-- 신발 종류 시작 -->
<section class="py-5">
    <div class="container">
        <div class="row text-left p-2 pb-3">
            <h4>Custom Inspiration</h4>
        </div>

        <!--Start Carousel Wrapper-->

        <div id="product" style="margin-bottom: -700px">
            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex1.png"
                        height="100px"
                        width="auto">

                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex2.png"
                             height="100px"
                             width="auto">

                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex3.png"
                             height="100px"
                             width="auto">

                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex4.png"
                             height="100px"
                             width="auto">


                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex5.png"
                             height="100px"
                             width="auto">

                    </div>
                </div>
            </div>
        </div>
        </div>
</section>
<!-- 신발 종류 끝 -->

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

<div class="modal3">
    <div class="modal-content3" style="height: 250px">
        <span class="close-button3">&times;</span>
        <form>
            <p stong>LOG IN</p>
            <div style="text-align: left">
                <h6>아이디 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="아이디를 입력해주세요" style="width: 220px"> </h6>
            </div>
            <div style="text-align: left">
                <h6>비밀번호 :&nbsp;&nbsp;&nbsp;<input type="password" placeholder="비밀번호를 입력해주세요" style="width: 220px; height: 38px"> </h6>
            </div>

            <button class="lgm-btn1 modal-button2">confirm</button>
            <button class="lgm-btn2">cancel</button>

        </form>
    </div>
</div>
<div class="modal4">
    <div class="modal-content4" style="height: 200px">
        <span class="close-button4">&times;</span>
        <form>
            <div style="text-align: center">
                <h3>로그아웃 하시겠습니까?</h3>
            </div>
            <br/>
            <div class="modal-button3" style="text-align: center">
                <button class="lgm-btn1">YES</button>
                <button class="lgm-btn2">NO</button>
            </div>
        </form>

    </div>
</div>
