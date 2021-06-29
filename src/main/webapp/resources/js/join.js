// user, artist radio 버튼
/*$('#utype').on('change', function () {
    $('#zipcode').attr('readonly', true);
    $('#addr1').attr('readonly', true);
    $('#addr3').attr('readonly', true);
});*/

// join Register
$('#joinbtn').on('click', function () {
        if ( $('#uname').val() == '') alert('이름을 입력하세요.');
        else if ( $('#userid').val() == '') alert('아이디를 입력하세요.');
        else if ( $('#upasswd').val() == '') alert('비밀번호를 입력하세요.');
        else if ( $('#uchkpassword').val() != $('#upasswd').val() ) alert('비밀번호를 확인하세요.');
        else if ( $('#uemail').val() == '') alert('이메일을 입력하세요.');
        else if ( $('#zipcode').val() == '' || $('#addr1').val() == '' || $('#addr2').val() == '')
                alert('주소를 입력하세요.');
        else {
                const frm = $('#joinfrm');
                frm.attr('action', '/join/joinok');
                frm.attr('method', 'post');
                frm.submit();
        }
});

// joinok 가입 완료
$('#contBtn').on('click', function () {
   location.href = '/';
});

// 아이디 중복 확인 // 버튼.on('click', checkuserid(){}) 으로 해야할듯
function checkuserid() {
    let uid = $('#userid').val();
    if (uid == '') {
        $('#uidmsg').text(' 6~16 자의 영문 소문자, 숫자와 특수기호(_) 만 사용할 수 있습니다.');
        $('#uidmsg').attr('style', 'color:#5415E0');
        return
    }
    $.ajax({
           url:'join/checkuid', type:'GET', data: {'uid':uid}
    })
        .done(function (data) {
            let msg = '사용 불가 아이디 입니다.';
            $('#uidmsg').attr('style', 'color:#CB1D09');

            if (data.trim() == '0') {
               msg = '사용 가능한 아이디 입니다.';
               $('#uidmsg').attr('style', 'color:#5415E0');
            }
            $('#uidmsg').text(mgs);
        })
        .fail(function (xhr, status, error) {
            alert(xhr.status +'/' + error)
        });
}

// 비밀번호 확인
$('#uchkpassword').on('blur', function () {
    if ($('#uchkpassword').val() != $('#upasswd').val()) {
        $('#uchkmsg').text(' 비밀번호가 일치하지 않습니다.');
        $('#uchkmsg').attr('style', 'color:#CB1D09');
    } else if ($('#uchkpassword').val() == $('#upasswd').val()) {
        $('#uchkmsg').text(' 비밀번호와 일치합니다.');
        $('#uchkmsg').attr('style', 'color:#5415E0:');
    }
});