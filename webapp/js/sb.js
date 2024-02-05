
/* (장바구니) 체크된 상품 금액 합계 */
function priceSum() {
   const priceList = document.querySelectorAll('input[name="goodsprice"]:checked');
   const amountList = document.querySelectorAll('input[name="goodsprice"]:checked~input[name="goodsamount"]');
   var totalPrice = 0;
   
   for(let i = 0; i<priceList.length; i++) {
      totalPrice += parseInt(amountList[i].value)*parseInt(priceList[i].value);
   }
   document.querySelector('.price-calc-tag>p>b').innerHTML = totalPrice;
   document.querySelector('.price-total-tag>p>b').innerHTML = totalPrice+3000;
}
/* (결제페이지) 전체 상품 금액 합계 */
$(function(){
	priceSum();
});


/* 체크박스 전체선택 */
function selectAll(selectAll) {
	const checkboxes  = document.getElementsByName('goodsprice');
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked;
	});
	
	const checkboxes2  = document.getElementsByName('sbVo_num');
	checkboxes2.forEach((checkbox2) => {
		checkbox2.checked = selectAll.checked;
	});
} 


$(document).ready(function() {
	$('input[name="goodsprice"]').change(function(){
		const checkboxes = document.querySelectorAll('input[name="goodsprice"]');
   		const checked = document.querySelectorAll('input[name="goodsprice"]:checked');
   		const selectAll = document.querySelector('input[name="shoppingbasket"]');
		
    	if (checkboxes.length === checked.length) {
			selectAll.checked = true;
		} 
    	else {
			selectAll.checked = false;
		}
		
	});
})

function numCheck() {
	const nums = document.getElementsByName('sbVo_num');
	const numsChecking = document.querySelectorAll('input[name="goodsprice"]:checked+input[name="sbVo_num"]');
	for(let i=0; i<nums.length; i++) {nums[i].checked = false;}
	console.log(nums);
	for(let k=0; k<numsChecking.length; k++) {numsChecking[k].checked = true;}
	console.log(numsChecking);
}

function deleteChecked() {
	document.frm.command.value = "shoppingBasket_delete";
	console.log(document.frm.command.value);
	if (document.frm.command.value === "shoppingBasket_delete") {
		return true;
	} else {
		return false;
	}
}
function buyChecked() {
	//document.frm.name.value.length
	document.frm.command.value = "payment_form";
	console.log(document.frm.command.value);
	if (document.frm.command.value === "payment_form") {
		return true;
	} else {
		return false;
	}
}