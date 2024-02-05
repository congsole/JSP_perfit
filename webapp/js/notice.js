

function delCheck() {
   var del = confirm("게시글을 삭제하시겠습니까?");
   if(del) {

      alert('삭제되었습니다.');
      window.opener.parent.location.href="CscServlet?command=notice_delete&num=${notice.num}";
      return true;
   }
   alert('취소하였습니다.');
   return false;
}

$(function dateTrim() {
	document.bfdate.innerHTML = document.bfdate.text().substr(0,15);
	document.afdate.innerHTML = document.afdate.text().substr(0,15);
})