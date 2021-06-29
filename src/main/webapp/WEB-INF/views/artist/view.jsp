<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #order {
        height: 850px;
        border: none;
        position:  -webkit-sticky;
        position:  sticky;
        top: -30px;
    }
    tp {
        /*word-wrap: break-word;*/
        /*height: 300px;*/
        line-height: 5px;
    }

</style>

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

<!-- Open Content -->
<section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mt-5">
                <div class="row">

                    <div class="col-4" style="margin-left: 12px" >
                        <button type="button"
                                class="btn btn-success text-white" id="modifybtn" >
                            <i class="fas fa-edit"></i>&nbsp;Modify</button>
                        <button type="button" class="btn btn-danger" id="deletebtn">
                            <i class="fas fa-trash-alt"></i>Delete</button>
                    </div>
                    <div class="col-2 offset-5" style="text-align: right">
                        <button type="button" class="btn btn-light" id="listartbtn">
                            <i class="ion-ios-toggle"></i>&nbsp;To list</button>
                    </div>

                    <div class="col-md-8 bg-light">
                        <section class="py-3">
                            <div id="Slider">

                                <div class="p-2 pb-2">
                                    <div class="product-wap card rounded-0">
                                        <div class="card rounded-0">
                                            <img class="card-img rounded-0 img-fluid" src="/img/art1.jpg">
                                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="p-2 pb-3">
                                    <div class="product-wap card rounded-0">
                                        <div class="card rounded-0">
                                            <img class="card-img rounded-0 img-fluid" src="/img/art2.jpg">
                                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="p-2 pb-3">
                                    <div class="product-wap card rounded-0">
                                        <div class="card rounded-0">
                                            <img class="card-img rounded-0 img-fluid" src="/img/art3.jpg">
                                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="p-2 pb-3">
                                    <div class="product-wap card rounded-0">
                                        <div class="card rounded-0">
                                            <img class="card-img rounded-0 img-fluid" src="/img/art4.jpg">
                                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="p-2 pb-3">
                                    <div class="product-wap card rounded-0">
                                        <div class="card rounded-0">
                                            <img class="card-img rounded-0 img-fluid" src="/img/art5.jpg">
                                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </section>
                    </div>

                    <div class="col-md-4 mt-3" id="order"> <!--작업내용 시작-->
                        <div class="card">
                            <div class="card-header">
                                <h1 class="h2">Custom Pride Chuck Taylor All Star By You</h1>
                                <h4 style="text-align: right; margin-bottom: -18px">abc123</h4>
                            </div>
                            <div class="card-body">
                                <ul class="list-inline">
                                    <div style="text-align: right; margin-bottom: -45px">
                                    <i class="far fa-eye">&nbsp;:</i>
                                <li class="list-inline-item">
                                    <p>123456<p>
                                </li>
                                    </div>

                                <br>
                                <li class="list-inline-item">
                                    <h6>Model: </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>Lorem ipsum<p>
                                </li>
                                <br>
                                <li class="list-inline-item">
                                    <h6>production period: </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>5 Day</p>
                                </li>
                                <br>
                                <li class="list-inline-item">
                                    <h6>Work Cost: </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>&#8361; 50,000</p>
                                </li>
                                <br>
                                <li class="list-inline-item">
                                    <h6>shipping fee :</h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>&#8361; 3,000</p>
                                </li>
                                <li class="list-inline-item">
                                    <br>
                                    <h6>To say :</h6>
                                </li>
                                </ul>

                            <li class="list-inline-item">
                                <p class="tp">안녕하세요안녕하세요
                                    안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요
                                    안녕하세요안녕하세요안녕하세요
                                    안녕하세요안녕하세요안녕하세요
                                </p>
                            </li>
                            </div>
                                <div class="card-footer">
                                    <div class="row">
                                    <div class="col-md-4">
                                        <button type="button" class="btn btn-primary btn-xs" id="thumbup">
                                            <span style="font-size:30px;"><i class="ion-heart"></i>123</span> </button>
                                    </div>
                                    <div class="col-md-8">
                                        <button type="button" class="btn btn-warning btn-xs" id="Meetingbtn" data-toggle="modal" data-target="#Meetingfrm">
                                            <span style="font-size:30px"><i class="fas fa-comments"></i>Meeting</span></button>
                                    </div>
                                    </div>
                                </div>
                        </div>
                    </div><!--작업내용 끝-->
                </div>
            </div>
        </div>
        <!-- col end -->
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
                        <label for="title" class="col-form-label col-3 text-right" style="margin-top: 10px">
                            Title</label>
                        <input type="text" name="title" id="title"
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
                        <label for="email" class="col-form-label col-3 text-right" style="margin-top: 10px">
                            E-mail</label>
                        <input type="text" name="email" id="email"
                               class="form-control col-md-8
                               border-dark">
                    </div>
                    <div class="form-group row text-dark">
                        <label for="questions" class="col-form-label col-4 text-left">
                            Questions</label>
                        <textarea id="questions" name="questions" class="border-dark form-control col-md-12" rows="15"></textarea>
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



