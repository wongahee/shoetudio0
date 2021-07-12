// 다음 게시물, 이전 게시물 버튼
// 이전게시물
$('#preboard').on('click', function () {
   location.href='/community/prev?cmno=' + $('#cmno').val();
});

// 다음게시물
$('#nxtboard').on('click', function () {
   location.href='/community/next?cmno=' + $('#cmno').val();
});

// save board 입력완료 버튼 #savecmbtn 근데 이미지는?
$('#savecmbtn').on('click', function () {
   if ($('#title').val() == '') alert('제목을 입력하세요.');
   else if ( $('#contents').val() == '' ) alert('내용을 입력하세요.');
   else if ( grecaptcha.getResponse() == '' ) alert('캡챠를 확인하세요.');
   else {
      const frm = $('#boardfrm');
      frm.attr('action', '/community/write');
      frm.attr('method', 'post');
      frm.attr('enctype', 'multipart/form-data');
      frm.submit();
   }
});

// 첨부파일 이름
// show attach filename
$('#file1').on('change', function () {
   var fname = $(this).val();
   fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
   $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

$('#file2').on('change', function () {
   var fname = $(this).val();
   fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
   $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

$('#file3').on('change', function () {
   var fname = $(this).val();
   fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
   $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

$('#file4').on('change', function () {
   var fname = $(this).val();
   fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
   $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

$('#file5').on('change', function () {
   var fname = $(this).val();
   fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
   $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

// search board
$('#findbtn').on('click', function () {
   if ($('#findkey').val() == '')
      alert('검색할 내용을 입력하세요!');
   else {
      let qry = '?findtype=' + $('#findtype').val();
      qry += "&findkey=" + $('#findkey').val() + "&cp=1";
      let url = '/community/find' + qry;
      location.href = url;
   }
});

// new board reply 댓글댓글
$('#rpbtn').on('click', function () {
   if ($('#reply').val() == '') alert('댓글을 작성하세요.');
   else {
      const frm = $('#replyfrm');
      frm.attr('method', 'post');
      frm.attr('action', '/reply/write');
      frm.submit();
   }
});

// new reply

// 수정하기 버튼 update.jsp가 필요
$('#modifybtncm').on('click', function () {
   location.href = '/community/update?cmno=' + $('#cmno').val();
});

// 삭제하기 버튼
$('#deletebtncm').on('click', function () {
   location.href = '/community/cmrmv?cmno=' + $('#cmno').val();
});

// 새글쓰기로 이동하는 버튼?
$('#writebtn').on('click', function () {
   location.href = '/community/write';
});

// 목록으로 이동하는 버튼
$('#listbtn').on('click', function () {
   location.href = '/community/list';
});

// 댓글 수정하기, 삭제하기 버튼
$('#modirp').on('click', function () {
   if($('#moreply').val() == '')
      alert('내용을 입력하세요.');
   else {
      const frm = $('#replymodifrm');
      frm.attr('method','post');
      frm.attr('action', '/reply/modify');
      frm.submit();
   }
});

// delete reply
// $('#redelbtn').on('click', function () {
function rmvreply() {
   location.href = '/community/reply/rprmv?rno=' + $('#rno').val();
};

// show img - 썸네일인듯
/*
function showimg(cmno) {
   location.href = '/community/view?cmno=' + cmno;
}*/

// 이미지 수정하기
// 수정?? gallery disable/enable upload file
$('#die1').on('change', function () {
   if ($('#die1').is(':checked')) {   // checkbox가 체크되면
      $('#file1').attr('disabled', false);    // disabled 해제
      $('#todie').val("1" + $('#todie').val());   // 첨부파일 수정목록에 1 추가
   } else if (!$('#die1').is(':checked')) {
      $('#file1').attr('disabled', true);
      $('#todie').val($('#todie').val().replace(/1/g, ''));
   }
});

$('#die2').on('change', function () {
   if ($('#die2').is(':checked')) {   // checkbox가 체크되면
      $('#file2').attr('disabled', false);    // disabled 해제
      $('#todie').val($('#todie').val() + "2");   // 첨부파일 수정목록에 2 추가
   } else if (!$('#die2').is(':checked')) {
      $('#file2').attr('disabled', true);
      $('#todie').val($('#todie').val().replace(/2/g, ''));
   }
});

$('#die3').on('change', function () {
   if ($('#die3').is(':checked')) {   // checkbox가 체크되면
      $('#file3').attr('disabled', false);    // disabled 해제
      $('#todie').val($('#todie').val() + "3");   // 첨부파일 수정목록에 3 추가
   } else if (!$('#die3').is(':checked')) {
      $('#file3').attr('disabled', true);
      $('#todie').val($('#todie').val().replace(/3/g, ''));
   }
});

$('#die4').on('change', function () {
   if ($('#die4').is(':checked')) {   // checkbox가 체크되면
      $('#file4').attr('disabled', false);    // disabled 해제
      $('#todie').val($('#todie').val() + "4");   // 첨부파일 수정목록에 3 추가
   } else if (!$('#die4').is(':checked')) {
      $('#file4').attr('disabled', true);
      $('#todie').val($('#todie').val().replace(/4/g, ''));
   }
});

$('#die5').on('change', function () {
   if ($('#die5').is(':checked')) {   // checkbox가 체크되면
      $('#file5').attr('disabled', false);    // disabled 해제
      $('#todie').val($('#todie').val() + "5");   // 첨부파일 수정목록에 3 추가
   } else if (!$('#die5').is(':checked')) {
      $('#file5').attr('disabled', true);
      $('#todie').val($('#todie').val().replace(/5/g, ''));
   }
});

// 글 수정하기
$('#modbtn').on('click', function () {
   if (grecaptcha.getResponse() == '') alert('캡챠 확인해주세요.');
   else {
      const frm = $('#modcmfrm');
      frm.attr('method', 'post');
      frm.attr('enctype', 'multipart/form-data');
      frm.attr('action', '/community/update');
      frm.submit();
   }
});

// 추천하기 버튼
$('#commbtn').on('click', function () {
   location.href='/community/recommd?cmno=' + $('#cmno').val();
});