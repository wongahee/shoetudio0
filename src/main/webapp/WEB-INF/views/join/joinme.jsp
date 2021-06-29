<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kr">
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
          href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
  />
  <link
          rel="stylesheet"
          type="text/css"
          href="/css/joinme.css"
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
  <!-- daum 주소 -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

  <!-- 캡챠 -->
  <script src="https://www.google.com/recaptcha/api.js"></script>

  <title>Account Registration</title>
</head>
<body>
<!-- Header Section -->
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
          <a href="/about">About Us</a>
        </li>
        <li><a href="/custom/list">Custom</a></li>
        <li><a href="/artist/list">Artist</a></li>
        <li><a href="/community/list?cp=1">Community</a></li>
      </ul>
    </div>
  </nav>
</header>
<!-- Main -->
<section>
  <div class="testbox">
    <h1>Registration</h1>
    <form name="joinfrm" id="joinfrm">
      <hr />
      <div class="accounttype">
        <input type="radio" id="radioOne" name="utype" value="0" checked />
        <label for="radioOne" class="radio" check>Customer</label>
        <input type="radio" id="radioTwo" name="utype" value="1" />
        <label for="radioTwo" class="radio">Artist</label>
      </div>
      <hr />
      <label id="icon" for="uname"><i class="ion-ios-person"></i></label>
      <input type="text" name="uname" id="uname" placeholder="Name" required />
      <br />
      <br />
      <label id="icon" for="userid"><i class="ion-ios-person"></i></label>
      <input type="text" name="userid" id="userid" placeholder="Userid" required />
      <br />
      <br />
      <label id="icon" for="upasswd"><i class="ion-ios-unlocked"></i></label>
      <input type="password" name="upasswd" id="upasswd" placeholder="Password" required />
      <label id="icon"><i class="ion-ios-locked"></i></label>
      <input
              type="password" id="uchkpassword" placeholder="Verify your Password"
              required
      />
      <p id="uchkmsg" >비밀번호를 확인해 주세요.</p>
      <br />
      <br />
      <label id="icon" for="name"><i class="ion-ios-email"></i></label>
      <input type="email" name="uemail" id="uemail" placeholder="Email Address" required />

      <label id="icon" for="name"><i class="ion-ios-home"></i></label>
      <input type="text" placeholder="번지수" name="zipcode" id="zipcode"/>
      <button onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="address">새주소 검색하기</button>
      <br />
      <label id="icon" for="name"><i class="ion-ios-home"></i></label>
      <input type="text" placeholder="나머지 주소1 " id="addr1" name="addr1" />
      <label id="icon" for="name"><i class="ion-ios-home"></i></label>
      <input type="text" placeholder="나머지 주소2" id="addr2" name="addr2" />
      <label id="icon" for="name"><i class="ion-ios-telephone"></i></label>
      <input type="text" placeholder="전화번호" id="uphone" name="uphone" required />
      <input type="hidden" id="extraAddress" name="extraAddress" />
      <br />
      <hr/>
      <!-- RECAPTCHA Section -->
      <br/>
      <br/>
      <%-- 리캡챠 넣어주세요   --%>
      <div class="g-recaptcha col-7" data-sitekey="6LdoIwgbAAAAALfBPVcgpuKT8532BKHw6wusA_l1" ></div>
      <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
      <hr/>
      <!--Register Button -->
      <br/>
      <p>By clicking Register, you agree to our<a href="/join/agree">terms and condition</a></p>
      <br/>
      <button type="button" class="register-button" id="joinbtn" name="joinbtn">Register</button>
    </form>
  </div>
</section>

<!-- Footer -->
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

  <script>
    function sample6_execDaumPostcode() {
      new daum.Postcode({
        oncomplete: function(data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var addr = ''; // 주소 변수
          var extraAddr = ''; // 참고항목 변수

          //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            addr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            addr = data.jibunAddress;
          }

          // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
          if(data.userSelectedType === 'R'){
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
              extraAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
              extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraAddr !== ''){
              extraAddr = ' (' + extraAddr + ')';
            }
            // 조합된 참고항목을 해당 필드에 넣는다.
            document.getElementById("extraAddress").value = extraAddr;

          } else {
            document.getElementById("extraAddress").value = '';
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('zipcode').value = data.zonecode;
          document.getElementById("addr1").value = addr;
          // 커서를 상세주소 필드로 이동한다.
          document.getElementById("addr2").focus();
        }
      }).open();
    }
  </script>

</footer>
</body>
</html>
