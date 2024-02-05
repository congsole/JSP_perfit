function buyCheck() {
	if ($("input:radio:checked").length <1) {
		alert("색상을 체크하세요");
		return false;
	}
	if ($("input[name=size]:radio:checked").length <1) {
		alert("사이즈를 체크하세요");
		return false;
	}
	if (document.frm.amount.value == 0) {
		alert("수량을 입력하세요.");
		return false;
	}
	return true;
}
