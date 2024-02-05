function statuscheck() {
	const sizestatus = document.querySelectorAll('.statustr');
	const checkbox = document.getElementById('statusYN');
	
	if (checkbox.checked) {
		document.querySelector('.statusAlert').innerHTML = "<p> 숨기기 중입니다 </p>";
		for (let i = 0; i<sizestatus.length; i++) {
			sizestatus[i].classList.add('checkedYN');
		}
	} else {
		document.querySelector('.statusAlert').innerHTML = "";
		for (let i = 0; i<sizestatus.length; i++) {
			sizestatus[i].classList.remove('checkedYN');
		}
	}
}