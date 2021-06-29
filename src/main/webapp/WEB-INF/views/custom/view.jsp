<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
      integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/templatemo.css" />
<link rel="stylesheet" type="text/css" href="/css/header_footer.css" />
<link rel="stylesheet" type="text/css" href="/css/header-modal.css"/>
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

<header>
    <nav>
        <div class="row">
            <a href="/#">
            <img
                src="/img/Shoetudio_logo.png"
                alt="Shoetudio"
                class="logo"
            /></a>
            <ul class="main-nav">
                <li><a href="/about">About Us</a></li>
                <li><a href="/custom/list">Custom</a></li>
                <li><a href="/artist/list">Artist</a></li>
                <li><a href="/community/list?cp=1">Community</a></li>
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
                        <p>Customize your new favorite Chucks with fresh summer colors and tie dye prints. Now available for the first time with print-popped bindings.
                        </p>
                        <h6>Specification:</h6>
                        <ul class="list-unstyled pb-3">
                            <li>Choose a color and material.</li>
                            <li>Match your shoe to your personality with multiple color and material options.</li>
                            <li>It’s all in the details.</li>
                            <li>Pick from a variety of laces, eyelets, rubber sidewalls, and exclusive upper and midsole prints to add a unique twist to your design.</li>
                            <li>Make it personal.</li>
                            <li>Add your name, number or a personal, embroidered ID.</li>
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
                        height="100px" width="auto">
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex2.png"
                             height="100px" width="auto">
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex3.png"
                             height="100px" width="auto">
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex4.png"
                             height="100px" width="auto">
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="product-wap card rounded-0">
                    <div class="card rounded-0">
                        <img class="card-img rounded-0 img-fluid" src="/img/customex5.png"
                             height="100px" width="auto">
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
                <li><a href="/#">Home</a></li>
                <li><a href="/about">About Us</a></li>
                <li><a href="/custom/list">Custom</a></li>
                <li><a href="/artist/list">Artists</a></li>
                <li><a href="/community/list?cp=1">Community</a></li>
            </ul>
        </div>
        <div class="col span-1-of-2">
            <ul class="social-icons">
                <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                <li><a href="#"><i class="ion-social-instagram"></i></a></li>
            </ul>
        </div>
    </div>

    <div class="row">
        <p>Copyright &copy; 2021 by Shoetudio. All rights reserved.</p>
    </div>
</footer>

