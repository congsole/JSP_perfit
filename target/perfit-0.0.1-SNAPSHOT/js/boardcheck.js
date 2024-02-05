function boardCheck() {
	if ($("input:radio:checked").length <1) {
		alert("문의 유형을 체크하세요");
		return false;
	}
	if (document.frm.id.value.length == 0) {
		alert("아이디를 입력하세요.");
		return false;
	}
	if (document.frm.title.value.length == 0) {
		alert("제목을 입력하세요.");
		return false;
	}
	if (document.frm.content.value.length == 0) {
		alert("글 내용을 입력하세요.");
		return false;
	}
	
	return true;
}
function open_win(url, name) {
	window.open(url, name, "width=500, height=230");
}
function passCheck() {
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}