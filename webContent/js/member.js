function idCheck() {
	if(document.frm.id.value == "") {
		alert('아이디를 입력해주세요.');
		document.frm.id.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.id.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbar=yes, resizable=yes, width=450, height=300");	
}

function idOk() {//좌: 회원가입 폼의 인풋태그 네임
	opener.frm.id.value = document.frm.userid.value; // "아이디 사용" 버튼을 눌러서 전송받은 userid를 부모 창에 전달하고
	opener.frm.reid.value = document.frm.userid.value; // "아이디 사용" 버튼을 눌러서 전송받은 reid를 부모 창에 전달하고
	self.close(); // 본인 창은 닫는다.
}

function joinCheck() {
	if (document.frm.name.value.length == 0) {
		alert("이름은 필수 입력사항입니다.");
		document.frm.name.focus();
		return false;
	}
	if (document.frm.id.value.length == 0) {
		alert("아이디를 입력해주세요.");
		document.frm.id.focus();
		return false;
	}
	if (document.frm.id.value.indexOf('perfit') != -1) {
		alert("사용 불가한 아이디입니다.");
		document.frm.id.focus();
		return false;
	}
	if (document.frm.id.value.length < 3) {
		alert("아이디는 3자 이상이어야 합니다.");
		document.frm.id.focus();
		return false;
	}
	if (document.frm.reid.value.length == 0) {
		alert("아이디 중복확인이 필요합니다.");
		document.frm.id.focus();
		return false;
	}
	if (document.frm.pw.value.length == 0) {
		alert("비밀번호를 입력해주세요.");
		document.frm.pw.focus();
		return false;
	}
	if (document.frm.pw.value.length < 8) {
		alert("비밀번호는 8자 이상이어야 합니다.");
		document.frm.pw.focus();
		return false;
	}
	if (document.frm.pw.value != document.frm.pwck.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.frm.pwck.focus();
		return false;
	}
	if(document.frm.phone.value.contain())
	return true;
}



function loginCheck() {
	if (document.frm.id.value.length == 0) {
		alert("아이디를 입력해주세요.");
		document.frm.id.focus();
		return false;
	}
	if (document.frm.password.value.length == 0) {
		alert("비밀번호를 입력해주세요.");
		document.frm.password.focus();
		return false;
	}
	return true;
}
