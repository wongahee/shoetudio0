
// write
$('#newartbtn').on('click', function (){
    if($('#title').val() == '') alert("제목을 작성하세요");
    else if ($('#contents').val() == '') alert("본문을 작성하세요");
    else if (grecaptcha.getResponse() == '')
        alert('자동가입 방지 확인 필요!!');
    else {
        const frm = $('#artfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/artist/write');
        frm.submit();
    }
});

// goto list
    $('#listartbtn').on('click', function() {
    location.href = '/artist/list';
});

// goto write
$('#writeartbtn').on('click', function() {
    location.href = '/artist/write';
});

// 모달 종료 스크립트 시작
    $('#mtexit').on('click', function () {
    $('#Meetingfrm').modal('hide');
});

//Send
$('#Sendbtn').on('click', function (){
    if($('#title').val() == '') alert("제목을 작성하세요");
    else if($('#userid').val()=='') alert("이름을 입력하세요");
    else if ($('#email').val() == '') alert("이메일을을 작성하세요");
    else if ($('#questions').val() == '') alert("본문을 작성하세요");

    else {
        const frm = $('#Meetingfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/artist/send');
        frm.submit();
    }
});






