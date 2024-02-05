function textCheck() {
	const od = "order_date";
	const on = "order_num";
	if(document.frm.searchField.value == od) {
		if(document.frm.dateStart.value.length == 0 || document.frm.dateLast.value.length == 0 ) {
			alert("검색하고 싶은 기간을 바르게 설정해 주세요.");
			return false;
		}
	} else if (document.frm.searchField.value == on) {
		if(document.frm.searchText.value.length == 0) {
			alert("검색하고 싶은 주문번호를 입력하세요.");
			return false;
		}
	}
	return true;
}

function calendar() {
	let d = new Date();
	let date = new Date(d.getTime() - (d.getTimezoneOffset() * 60000));
	date = date.toISOString().slice(0,10);
	
	dateLast = document.getElementById("dateLast");
	dateStart = document.getElementById("dateStart");

	if (document.querySelector('#date1').checked) {
		let date2 = new Date(d.getTime() - (d.getTimezoneOffset() * 60000));
		let oneMonthAgo = new Date(date2.setMonth(date2.getMonth() - 1));
				
		oneMonthAgo = oneMonthAgo.toISOString().slice(0,10);
		dateLast.value = date;
		dateStart.value = oneMonthAgo;
	} else if (document.querySelector('#date2').checked) {
		let date3 = new Date(d.getTime() - (d.getTimezoneOffset() * 60000));
		let threeMonthAgo = new Date(date3.setMonth(date3.getMonth() - 3));
		
		threeMonthAgo = threeMonthAgo.toISOString().slice(0,10);
		dateLast.value = date;
		dateStart.value = threeMonthAgo;
	} else if (document.querySelector('#date3').checked) {
		let date4 = new Date(d.getTime() - (d.getTimezoneOffset() * 60000));
		let sixMonthAgo = new Date(date4.setMonth(date4.getMonth() - 6));

		sixMonthAgo = sixMonthAgo.toISOString().slice(0,10);
		dateLast.value = date;
		dateStart.value = sixMonthAgo;
	} else if (document.querySelector('#date4').checked) {
		let date5 = new Date(d.getTime() - (d.getTimezoneOffset() * 60000));
		let oneYearAgo = new Date(date5.setFullYear(date5.getFullYear() - 1));
		
		oneYearAgo = oneYearAgo.toISOString().slice(0,10);
		dateLast.value = date;
		dateStart.value = oneYearAgo;
	}
}