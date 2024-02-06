function showPopup() {window.open("adrres.html","주소검색","width=600,height=300,left=100,top=50");}
function execDaumPostcode() {
  new daum.Postcode( {
    oncomplete: function( data ) {
      document.getElementById( 'zip-code' ).value = data.zonecode;
      document.getElementById( 'address-1' ).value = data.address;
      document.getElementById( 'address-1-1' ).value = data.jibunAddress;
      document.getElementById( 'address-2' ).focus();
    }
  } ).open();
}
