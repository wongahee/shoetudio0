// write
$('#newartbtn').on('click', function (){
    if($('#awtitle').val() == '') alert("제목을 입력하세요!");
    else if ($('#awcont').val() == '') alert("본문을 입력하세요!");
    else if (grecaptcha.getResponse() == '')
        alert('자동 기입 방지를 확인하세요!');
    else {
        const frm = $('#artfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/artist/write');
        frm.attr('enctype', 'multipart/form-data');
        frm.submit();
    }
});

// go to list
    $('#listartbtn').on('click', function() {
    location.href = '/artist/list';
});

// go to write
$('#writeartbtn').on('click', function() {
    location.href = '/artist/write';
});

// 모달 종료 스크립트 시작
    $('#mtexit').on('click', function () {
    $('#Meetingfrm').modal('hide');
});

// Send
$('#Sendbtn').on('click', function (){
    if($('#mtitle').val() == '') alert("제목을 입력하세요!");
    else if($('#userid').val()=='') alert("이름을 입력하세요!");
    else if ($('#uemail').val() == '') alert("이메일을 입력하세요!");
    else if ($('#mtcont').val() == '') alert("본문을 입력하세요!");

    else {
        const frm = $('#Mtfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/artist/send');
        frm.submit();
    }
});

// show attatch filename
$('#file1').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});

$('#file2').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});

$('#file3').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});

$('#file4').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});

$('#file5').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});

// update artist
$('#modifybtn').on('click', function () {
        const frm = $('#modartfrm');
        frm.attr('method', 'post');
        frm.attr('enctype', 'multipart/form-data');
        frm.attr('action', '/artist/update');
        frm.submit();
        location.href = '/artist/update?awno=' + $('#awno').val();
});

$('#thumbup').on('click', function () {
    location.href = '/artist/recommd?awno=' + $('#awno').val();
});

// remove artist
$('#deletebtn').on('click', function () {
    alert('게시글이 삭제되었습니다!');
    location.href = '/artist/delete?awno=' + $('#awno').val();
});

// prev page button
$('#prevbtn').on('click', function() {
    location.href = '/artist/prev?awno=' + $('#awno').val();
});

// next page button
$('#nextbtn').on('click', function() {
    location.href = '/artist/next?awno=' + $('#awno').val();
});

// search artist
$('#findbtn').on('click', function () {
    if ($('#findkey').val() == '')
        alert('검색할 내용을 입력하세요!');
    else {
        let qry = '?findtype=' + $('#findtype').val();
        qry += "&findkey=" + $('#findkey').val() + "&cp=1";
        let url = '/artist/find' + qry;
        location.href = url;
    }
});

// $('#findtype').val('${param.findtype}').prop('selected', 'true');


// show img
function showimg(awno) {
    location.href = '/artist/view?awno=' + awno;
}
