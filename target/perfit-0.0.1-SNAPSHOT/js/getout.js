  
        function showPopup() { window.open("guide.html", "a", "width=400, height=300, left=100, top=50"); }
        const form =document.querySelector('#form_tml');
        const submitbutton = document.querySelector('ne');
    
        function agreeCheck(frm)
        {
            if(frm.checkButton.disabled==true)
            frm.checkButton.disabled=false
            else
            frm.checkButton.disabled=true
        }
    