<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="/css/lEdit.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/dom-to-image/2.6.0/dom-to-image.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.2/FileSaver.min.js"></script>
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

<section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mt-5">
                <div class="row">

                    <div class="col-md-10 bg-light">
                        <section class="py-3" id="image">
                            <div id="CSlider">
                                <div>
                                    <div id="rmypattern1" class="pattern3"></div>
                                    <div id="tmypattern1" class="pattern2"></div>
                                    <div id="mypattern1" class="pattern"></div>
                                    <div id="mycanvas1" class="canvas"></div>
                                </div>
                                <div>
                                    <div id="rmypattern2" class="pattern3"></div>
                                    <div id="tmypattern2" class="pattern2"></div>
                                    <div id="mypattern2" class="pattern"></div>
                                    <div id="mycanvas2" class="canvas"></div>
                                </div>
                                <div>
                                    <div id="rmypattern3" class="pattern3"></div>
                                    <div id="tmypattern3" class="pattern2"></div>
                                    <div id="mypattern3" class="pattern"></div>
                                    <div id="mycanvas3" class="canvas"></div>
                                </div>
                                <div>
                                    <div id="rmypattern4" class="pattern3"></div>
                                    <div id="tmypattern4" class="pattern2"></div>
                                    <div id="mypattern4" class="pattern"></div>
                                    <div id="mycanvas4" class="canvas"></div>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="col-md-2 bg-dark">
                        <div class="row">
                            <ul class="list-unstyled templatemo-accordion">
                                <li class="pb-3">
                                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none">
                                        <div class="col-md-10 offset-1">
                                        <img class="card-img img-fluid" src="/i/Pattern/Lbody.png" alt="Card image cap" style="cursor: pointer">
                                        <p class="text-light" style="text-align: center">Body</p>
                                        </div>
                                    </a>

                                    <ul class="collapse show list-unstyled pl-3">
                            <div class="col-md-10">
                                <li> <a id="L_Dalmatian">
                                    <img class="card-img img-fluid" src="/i/Pattern/Dalmatian.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">Dalmatian</p></a></li>
                            </div>

                            <div class="col-md-10">
                                <li>   <a id="L_lavender">
                                    <img class="card-img img-fluid " src="/i/Pattern/lavender.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">lavender</p></a> </li>
                            </div>

                            <div class="col-md-10">
                                <li>   <a id="L_zebra">
                                    <img class="card-img img-fluid" src="/i/Pattern/zebra.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">zebra</p></a> </li>
                            </div>

                            <div class="col-md-10">
                                <li> <a id="reset1" onclick="RersetPattern()">
                                    <img class="card-img img-fluid" src="/i/Pattern/reset.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">Reset</p></a> </li>
                            </div>
                                    </ul>
                                </li>

                                <hr class="col-10" style="background-color: #fffb00">

                                <li class="pb-3">
                                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none">
                            <div class="col-md-10 offset-1">
                                <img class="card-img img-fluid" src="/i/Pattern/Ltongue.png" alt="Card image cap"  style="cursor: pointer">
                                <p class="text-light" style="text-align: center">Tongue</p>
                            </div>
                                    </a>
                                    <ul class="collapse show list-unstyled pl-3">
                            <div class="col-md-10">
                                <li> <a id="TL_Dalmatian">
                                    <img class="card-img img-fluid" src="/i/Pattern/Dalmatian.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">Dalmatian</p></a></li>
                            </div>

                            <div class="col-md-10">
                                <li> <a id="LT_crimson">
                                    <img class="card-img img-fluid" src="/i/Pattern/crimson.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">crimson</p></a></li>
                            </div>

                            <div class="col-md-10">
                                <li> <a id="LT_yellow">
                                    <img class="card-img img-fluid" src="/i/Pattern/yellow.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">yellow</p></a> </li>
                            </div>

                            <div class="col-md-10">
                                <li>  <a id="reset2" onclick="T_RersetPattern()">
                                    <img class="card-img img-fluid" src="/i/Pattern/reset.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">Reset</p></a> </li>
                            </div>
                                    </ul>
                                </li>
                                <hr class="col-10" style="background-color: #fffb00">

                                <li class="pb-3">
                                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none">
                            <div class="col-md-10 offset-1">
                                <img class="card-img img-fluid" src="/i/Pattern/Lrubber.png" alt="Card image cap" style="cursor: pointer">
                                <p class="text-light" style="text-align: center">Rubber</p>
                            </div>
                                    </a>
                                    <ul class="collapse show list-unstyled pl-3">
                            <div class="col-md-10">
                                <li> <a id="LR_halfblue">
                                    <img class="card-img img-fluid" src="/i/Pattern/hblue.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">halfblue</p></a> </li>
                            </div>

                            <div class="col-md-10">
                                <li>   <a id="LR_Vintage">
                                    <img class="card-img img-fluid" src="/i/Pattern/vintage.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">Vintage</p></a> </li>
                            </div>

                            <div class="col-md-10">
                                <li> <a id="reset3" onclick="R_RersetPattern()">
                                    <img class="card-img img-fluid" src="/i/Pattern/reset.png" alt="Card image cap" style="cursor: pointer">
                                    <p class="text-light" style="text-align: center">Reset</p></a> </li>
                            </div>
    .
                                    </ul>
                                </li>

                                <hr class="col-10" style="background-color: #fffb00">
                            <div class="col-md-10 offset-1">

                                <button type="button" class="btn btn-info" id="saveBtn">Edit Save</button>
                            </div>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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

<!-- 사진 저장 스크립트 시작 -->
<script>
    document.getElementById('saveBtn').onclick = function(){
        domtoimage.toBlob(document.getElementById('image'))
            .then(function (blob) {
                window.saveAs(blob, 'CustomImage_SHOETUDIO.png');
            });
    }
</script>
<!-- 사진 저장 스크립트 종료 -->