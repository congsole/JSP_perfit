function equalCheck() {
	const chk = document.querySelector('input[name="equalchk"]');
	const d_info = document.querySelector('fieldset[name="d_info"]>div>input');
	if(chk.checked == false) {
		for(let k=0; k<d_info.length; k++) {
			d_info[i].value= "";			
		}
	} else if(chk.checked == true) {
		
		document.querySelector('input[name="d_name"]').value = document.querySelector('input[name="Mname"]').value;
		document.querySelector('input[name="d_zip"]').value = document.querySelector('input[name="Mzip"]').value;
		document.querySelector('input[name="d_address1"]').value = document.querySelector('input[name="Maddress1"]').value;
		document.querySelector('input[name="d_address2"]').value = document.querySelector('input[name="Maddress2"]').value;
		document.querySelector('input[name="d_phone"]').value = document.querySelector('input[name="Mphone"]').value;
		document.querySelector('input[name="d_email"]').value = document.querySelector('input[name="Memail"]').value;

		
	}
}

function execDaumPostcode() {
    new daum.Postcode( {
      oncomplete: function( data ) {
        document.getElementById( 'zip-code' ).value = data.zonecode;
        document.getElementById( 'address-1' ).value = data.address;
      }
    } ).open();
  }
  
 $(function(){
	const priceList = document.querySelectorAll('.price');
   const amountList = document.querySelectorAll('.amount');
   var totalPrice = 0;
   
   for(let i = 0; i<priceList.length; i++) {
      totalPrice += parseInt(amountList[i].innerHTML)*parseInt(priceList[i].innerHTML);
   }
   document.querySelector('.price-calc-tag>p>b').innerHTML = totalPrice;
   document.querySelector('.price-total-tag>p>b').innerHTML = totalPrice+3000;
});


function requestPay(self) {
	const icons = document.querySelectorAll('.payment-with>div');
	
	for(let i = 0; i<icons.length; i++) {
		icons[i].classList.remove('selected');	
	}
	self.classList.add('selected');
}

