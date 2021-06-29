// index login - loginbtn
$('#loginbtn').on('click', function () {
    if($('#userid').val() == '')
        alert('이메일주소를 입력하세요!');
    else if($('#upasswd').val() == '')
        alert('비밀번호를 입력하세요!');
    else {
        const frm = $('#loginfrm');
        frm.attr('method','post');
        frm.attr('action', '/login');
        frm.submit();
    }
});

// about login
$('#loginbtn2').on('click', function () {
    if($('#userid').val() == '')
        alert('아이디를 입력하세요!');
    else if($('#upasswd').val() == '')
        alert('비밀번호를 입력하세요!');
    else {
        const frm = $('#loginfrm2');
        frm.attr('method','post');
        frm.attr('action', '/about/login');
        frm.submit();
    }
});

// index - logoutbtn
$('#logoutbtn').on('click', function (){
    location.href = '/join/logout';
});

// index - logoutbtn
$('#logoutbtn2').on('click', function (){
    location.href = '//logout';
});

// idx2joinbtn
$('#idx2joinbtn').on('click', function (){
    location.href = '/join/joinme';
});

// login modal
$("#test").click(function () {
$(".test").modal("show");
});
