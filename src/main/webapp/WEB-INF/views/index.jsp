<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="/vendors/css/normalise.css" />
    <link rel="stylesheet" type="text/css" href="/vendors/css/grid.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="vendors/css/ionicons.min.css"
    />
    <link rel="stylesheet" type="text/css" href="/css/index.css" />
    <link rel="stylesheet" type="text/css" href="/css/queries.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,100&display=swap"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://cdn.rawgit.com/mdehoog/Semantic-UI/6e6d051d47b598ebab05857545f242caf2b4b48c/dist/semantic.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.rawgit.com/mdehoog/Semantic-UI/6e6d051d47b598ebab05857545f242caf2b4b48c/dist/semantic.min.js"></script>
    <title>SHOETUDIO</title>
  </head>
  
  <body>
    <div class="row">
      <div class="span-1-of-4">
        <section class="showcase">
          <header>
            <a href="/#">
            <img
              src="/img/Shoetudio_logo.png"
              alt="Shoetudio_Logo"
              class="logo"
            /></a>
            <div class="menu">
              <ul class="main-nav">
                <li><a href="/about">About Us</a></li>
                <li><a href="/custom/list">Custom</a></li>
                <li><a href="/artist/list">Artist</a></li>
                <li><a href="/community/list?cp=1">Community</a></li>
              </ul>
            </div>
          </header>
          <video src="/video/converse.mp4" muted loop autoplay></video>
          <div class="overlay"></div>
          <div class="text">
            <h1>
              The new era of custom shoes<br />
              Starts right here on Shoetudio
            </h1>
          <c:if test="${empty UID}">
            <button class="btn btn-full" id="test" href="#"
                    style="width: 120px;height: 50px; font-size: 18px">Log In</button>
          </c:if>
          <c:if test="${not empty UID}">
            <button class="btn btn-full" id="logoutbtn" href="#"
                    style="width: 120px;height: 50px; font-size: 18px">Log out</button>
          </c:if>
             <button class="btn btn-full" id="idx2joinbtn" href="/join/joinme"
                    style="width: 120px;height: 50px; font-size: 18px">Sign In</button>

          <c:if test="${empty UID}">
            <div class="ui modal test" id="loginmodal">
              <div class="ui middle aligned center aligned grid">
                <div class="column">
                  <h2 class="ui blue image header">
                    <img src="/img/Shoetudio_logo.png" class="image" />
                    <div class="content">Welcome to Shoetudio</div>
                  </h2>
                  <form class="ui large form" name="loginfrm" id="loginfrm" method="post">
                    <div class="ui segment">
                      <div class="field">
                        <div class="ui left icon input">
                          <i class="user icon" for="userid"></i>
                          <input
                            id="userid"
                            type="text"
                            name="userid"
                            placeholder="E-mail address"
                          />
                        </div>
                      </div>
                      <div class="field">
                        <div class="ui left icon input">
                          <i class="lock icon" for="upasswd"></i>
                          <input
                            id="upasswd"
                            type="password"
                            name="upasswd"
                            placeholder="Password"
                          />
                        </div>
                      </div>
                      <button class="ui fluid large primary submit button" type="button"
                              id="loginbtn" data-toggle="modal" data-target="#loginmodal">
                        Login
                      </button>
                    </div>
                  </form>
                  <div class="ui message">
                    New to us?
                    <a href="/join/joinme">Sign Up</a>
                  </div>
                </div>
              </div>
            </div>
            </c:if>
          </div>
        </section>
      </div>
    </div>
  </body>
</head>
</html>
