function execDaumPostcode() {
    new daum.Postcode( {
	oncomplete: function( data ) {
		document.getElementById( 'zip-code' ).value = data.zonecode;
        document.getElementById( 'address-1' ).value = data.address;
        document.getElementById( 'address-2' ).focus();
      }
    } ).open();
  }
  
function memberCheck() {
	if (document.frm.password.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if (document.frm.passwordchk.value.length == 0) {
		alert("비밀번호 확인을 입력하세요.");
		return false;
	}
	if (document.frm.passwordchk.value != document.frm.password.value){
		alert("비밀번호가 일치하지 않습니다.")
		return false;
	}
	if (document.frm.name.value.length == 0) {
		alert("이름을 입력하세요.");
		return false;
	}
	if (document.frm.phone.value.length == 0) {
		alert("전화번호를 입력하세요.");
		return false;
	}
	if (document.frm.zip.value.length == 0) {
		alert("우편번호를 입력하세요.");
		return false;
	}
	if (document.frm.address1.value.length == 0) {
		alert("주소를 입력하세요.");
		return false;
	}
	if (document.frm.address2.value.length == 0) {
		alert("상세 주소를 입력하세요.");
		return false;
	}
	if (document.frm.email.value.length == 0) {
		alert("이메일을 입력하세요.");
		return false;
	}
	if (!confirm("정보를 수정하시겠습니까?")) {
		alert("취소하셨습니다.");
		return false;
	}
	alert("수정하였습니다.")
	return true;
}

function withdrawalCheck() {
	if (document.frm.password.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	} if (!confirm("정말로 탈퇴하시겠습니까? 계정을 탈퇴하시면 다시는 복구하실 수 없습니다.")) {
		alert("취소하셨습니다.");
		return false;
	}
	alert("탈퇴가 완료되었습니다.")
	return true;
}