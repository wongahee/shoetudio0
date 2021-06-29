// 추천수 증가
$('#thumbupbtn').on('click', function (){
    location.href = '/custom/recommd?cno=' + $('#cno').val();
});