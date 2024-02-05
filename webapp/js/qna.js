function delCheck() {
   var del = confirm("게시글을 삭제하시겠습니까?");
   if(del) {

      alert('삭제되었습니다.');
      window.opener.parent.location.href="CscServlet?command=Qna_delete&num=${qna.num}";
      return true;
   }
   alert('취소하였습니다.');
   return false;
}

function Login() {
   var Login = confirm("로그인이 필요한 서비스입니다.")
    if(Login){
    location.href="ProductServlet?command=member_login_form";
    return true;
   }
}
function delAnswer() {
   var del = confirm("답변을 삭제하시겠습니까?");
   if(del) {
      var num = document.getElementByid('nummmm');
      console.log(1);
      alert('삭제되었습니다.');
      console.log(2);
      window.location.href="CscServlet?command=Qna_answer_delete&num=" + num;
         console.log(3);
         return true;
   } else {
      alert('취소하였습니다.');
         return false;   
   }
   
}