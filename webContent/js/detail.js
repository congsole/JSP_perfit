(function() {
    $('#detail_pic>ul>li>img').bind(click, function() {
        $('#detail_pic>div>img').attr('src', $(this).attr("src") );
    });
});



function pDelCheck() {
   var del = confirm("상품을 삭제?");
   if(del) {
      window.opener.parent.location.href="ProductServlet?command=product_delete&id=${pVo.id}";
      alert('상품이 삭제됨');
      return true;
   }
   alert('삭제 안함');
   return false;
}
	

function ppDelCheck() {
	var del = confirm("${pVo.name}의 사진 일괄 삭제?");
	if(del) {
		window.opener.parent.location.href="ProductServlet?command=product_picture_delete&id=${ppVo.id}";
		alert('${pVo.name}의 사진 전부 삭제됨');
		return true;
	}
		alert('삭제 안함');
		return false;
}

function buyCheck() {
    if ($("input[name=color]:radio:checked").length <1) {
      alert("색상을 체크하세요");
      return false;
   }
   else if ($("input[name=size]:radio:checked").length <1) {
      alert("사이즈를 체크하세요");
      return false;
   }
   else if (document.frm.amount.value == 0) {
      alert("수량을 입력하세요.");
      return false;
   } else {
		var con = confirm("바로 구매하시겠습니까?");
		if(con == false) {
	   	return false;
   		}
   }
   return true;
}

function cartCheck() {
   if ($("input[name=color]:radio:checked").length <1) {
      alert("색상을 체크하세요");
      return false;
   }
   else if ($("input[name=size]:radio:checked").length <1) {
      alert("사이즈를 체크하세요");
      return false;
   }
   else if (document.frm.amount.value == 0) {
      alert("수량을 입력하세요.");
      return false;
   } else {
		var con = confirm("장바구니에 담으시겠습니까?");
		if(con == false) {
	   	return false;
   		}
   }
   return true;
}

