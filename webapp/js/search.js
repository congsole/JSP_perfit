


function checkSelectAll2() {
    // 전체 체크박스
    const checkboxes = document.querySelectorAll('input[name="shape_chk"]');
    // 선택된 체크박스
    const checked = document.querySelectorAll('input[name="shape_chk"]:checked');
    // select all 체크박스
    const selectAll = document.querySelector('input[name="shape_all"]');

    if (checkboxes.length === checked.length) {
        selectAll.checked = true;
    } else {
        selectAll.checked = false;
    }

} function selectAll2(selectAll) {
    const checkboxes = document.getElementsByName('shape_chk');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked
    });
}


function checkSelectAll3() {
    // 전체 체크박스
    const checkboxes = document.querySelectorAll('input[name="type_chk"]');
    // 선택된 체크박스
    const checked = document.querySelectorAll('input[name="type_chk"]:checked');
    // select all 체크박스
    const selectAll = document.querySelector('input[name="type_all"]');

    if (checkboxes.length === checked.length) {
        selectAll.checked = true;
    } else {
        selectAll.checked = false;
    }

} function selectAll3(selectAll) {
    const checkboxes = document.getElementsByName('type_chk');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked
    });
}

/**================ */


function checkSelectAll() {
    // 전체 체크박스
    const checkboxes = document.querySelectorAll('#onepiece_cate input[name="category_chk"]');
    // 선택된 체크박스
    const checked = document.querySelectorAll('#onepiece_cate input[name="category_chk"]:checked');
    // select all 체크박스
    const selectAll = document.querySelector('#onepiece_cate input[name="category_all"]');

    if (checkboxes.length === checked.length) {
        selectAll.checked = true;
    } else {
        selectAll.checked = false;
    }

}function selectAll(selectAll) {
    const checkboxes = document.querySelectorAll('#onepiece_cate input');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked
    })
}

function checkSelectAll4() {
    // 전체 체크박스
  const checkboxes = document.querySelectorAll('#top_cate input[name="category_chk"]');
    // 선택된 체크박스
    const checked = document.querySelectorAll('#top_cate input[name="category_chk"]:checked');
    // select all 체크박스
    const selectAll = document.querySelector('#top_cate input[name="category_all"]');

    if (checkboxes.length === checked.length) {
        selectAll.checked = true;
    } else {
        selectAll.checked = false;
    }

}function selectAll4(selectAll) {
    const checkboxes = document.querySelectorAll('#top_cate input');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked
    });
}




function checkSelectAll5() {
    // 전체 체크박스
  const checkboxes = document.querySelectorAll('#outer_cate input[name="category_chk"]');
    // 선택된 체크박스
    const checked = document.querySelectorAll('#outer_cate input[name="category_chk"]:checked');
    // select all 체크박스
    const selectAll = document.querySelector('#outer_cate input[name="category_all"]');

    if (checkboxes.length === checked.length) {
        selectAll.checked = true;
    } else {
        selectAll.checked = false;
    }

}
function selectAll5(selectAll) {
    const checkboxes = document.querySelectorAll('#outer_cate input');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked
    });
}


function checkSelectAll6() {
    // 전체 체크박스
  const checkboxes = document.querySelectorAll('#pants_cate input[name="category_chk"]');
    // 선택된 체크박스
    const checked = document.querySelectorAll('#pants_cate input[name="category_chk"]:checked');
    // select all 체크박스
    const selectAll = document.querySelector('#pants_cate input[name="category_all"]');

    if (checkboxes.length === checked.length) {
        selectAll.checked = true;
    } else {
        selectAll.checked = false;
    }

}
function selectAll6(selectAll) {
    const checkboxes = document.querySelectorAll('#pants_cate input');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked
    });
}


function checkSelectAll7() {
    // 전체 체크박스
  const checkboxes = document.querySelectorAll('#skirt_cate input[name="category_chk"]');
    // 선택된 체크박스
    const checked = document.querySelectorAll('#skirt_cate input[name="category_chk"]:checked');
    // select all 체크박스
    const selectAll = document.querySelector('#skirt_cate input[name="category_all"]');

    if (checkboxes.length === checked.length) {
        selectAll.checked = true;
    } else {
        selectAll.checked = false;
    }

}
function selectAll7(selectAll) {
    const checkboxes = document.querySelectorAll('#skirt_cate input');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked
    });
}
/////multi slider

// LENGTH ======================================================================
var lengthInputLeft = document.getElementById("length-input-left");
var lengthInputRight = document.getElementById("length-input-right");
var lengthLeft = document.getElementById("length_left");
var lengthRight = document.getElementById("length_right");

var lengthThumbLeft = document.querySelector(".slider.length>.thumb.left");
var lengthThumbRight = document.querySelector(".slider.length>.thumb.right");
var lengthRange = document.querySelector(".slider.length>.range");


function setLeftValue_Length() {
    var _this = lengthInputLeft,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.min(parseInt(_this.value), parseInt(lengthInputRight.value)-1);
 
    var percent = ((_this.value - min) / (max - min))*100;

    // thumbLeft.style.left = percent + "%";
    // range.style.left = percent + "%";

    lengthThumbLeft.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    lengthRange.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    lengthLeft.style.left = (percent+((-3)*percent/(max-min))) + "%";
}
setLeftValue_Length();


function setRightValue_Length() {
    var _this = lengthInputRight,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.max(parseInt(_this.value), parseInt(lengthInputLeft.value)+1);

    var percent = ((_this.value - min) / (max - min))*100;

    lengthThumbRight.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    lengthRange.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    lengthRight.style.right =  (((100 - percent)+((-3)*(100 - percent)/(max-min)))) + "%";
}
setRightValue_Length();


lengthInputLeft.addEventListener("input", setLeftValue_Length);
lengthInputRight.addEventListener("input", setRightValue_Length);



lengthInputLeft.addEventListener("mouseover", function() {
    lengthThumbLeft.classList.add("hover");
});
lengthInputLeft.addEventListener("mouseout", function() {
    lengthThumbLeft.classList.remove("hover");
});
lengthInputLeft.addEventListener("mousedown", function() {
    lengthThumbLeft.classList.add("active");
});
lengthInputLeft.addEventListener("mouseup", function() {
    lengthThumbLeft.classList.remove("active");
});



lengthInputRight.addEventListener("mouseover", function() {
    lengthThumbRight.classList.add("hover");
});
lengthInputRight.addEventListener("mouseout", function() {
    lengthThumbRight.classList.remove("hover");
});
lengthInputRight.addEventListener("mousedown", function() {
    lengthThumbRight.classList.add("active");
});
lengthInputRight.addEventListener("mouseup", function() {
    lengthThumbRight.classList.remove("active");
});




//PRICE ======================================================================
var priceInputLeft = document.getElementById("price-input-left");
var priceInputRight = document.getElementById("price-input-right");
var priceLeft = document.getElementById("price_left");
var priceRight = document.getElementById("price_right");

var priceThumbLeft = document.querySelector(".slider.price>.thumb.left");
var priceThumbRight = document.querySelector(".slider.price>.thumb.right");
var priceRange = document.querySelector(".slider.price>.range");


function setLeftValue_Price() {
    var _this = priceInputLeft,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.min(parseInt(_this.value), parseInt(priceInputRight.value)-1);

    var percent = ((_this.value - min) / (max - min))*100;

    // thumbLeft.style.left = percent + "%";
    // range.style.left = percent + "%";

    priceThumbLeft.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    priceRange.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    priceLeft.style.left = (percent+((-3)*percent/(max-min))) + "%";
}
setLeftValue_Price();


function setRightValue_Price() {
    var _this = priceInputRight,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.max(parseInt(_this.value), parseInt(priceInputLeft.value)+1);

    var percent = ((_this.value - min) / (max - min))*100;

    priceThumbRight.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    priceRange.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    priceRight.style.right =  (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
}
setRightValue_Price();


priceInputLeft.addEventListener("input", setLeftValue_Price);
priceInputRight.addEventListener("input", setRightValue_Price);



priceInputLeft.addEventListener("mouseover", function() {
    priceThumbLeft.classList.add("hover");
});
priceInputLeft.addEventListener("mouseout", function() {
    priceThumbLeft.classList.remove("hover");
});
priceInputLeft.addEventListener("mousedown", function() {
    priceThumbLeft.classList.add("active");
});
priceInputLeft.addEventListener("mouseup", function() {
    priceThumbLeft.classList.remove("active");
});



priceInputRight.addEventListener("mouseover", function() {
    priceThumbRight.classList.add("hover");
});
priceInputRight.addEventListener("mouseout", function() {
    priceThumbRight.classList.remove("hover");
});
priceInputRight.addEventListener("mousedown", function() {
    priceThumbRight.classList.add("active");
});
priceInputRight.addEventListener("mouseup", function() {
    priceThumbRight.classList.remove("active");
});


//SOULDER ======================================================================
var shoulderInputLeft = document.getElementById("shoulder-input-left");
var shoulderInputRight = document.getElementById("shoulder-input-right");
var shoulderLeft = document.getElementById("shoulder_left");
var shoulderRight = document.getElementById("shoulder_right");

var shoulderThumbLeft = document.querySelector(".slider.shoulder>.thumb.left");
var shoulderThumbRight = document.querySelector(".slider.shoulder>.thumb.right");
var shoulderRange = document.querySelector(".slider.shoulder>.range");

function setLeftValue_Shoulder() {
    var _this = shoulderInputLeft,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.min(parseInt(_this.value), parseInt(shoulderInputRight.value)-1);

    var percent = ((_this.value - min) / (max - min))*100;

    // thumbLeft.style.left = percent + "%";
    // range.style.left = percent + "%";

    shoulderThumbLeft.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    shoulderRange.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    shoulderLeft.style.left = (percent+((-3)*percent/(max-min))) + "%";
}
setLeftValue_Shoulder();

function setRightValue_Shoulder() {
    var _this = shoulderInputRight,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.max(parseInt(_this.value), parseInt(shoulderInputLeft.value)+1);

    var percent = ((_this.value - min) / (max - min))*100;

    shoulderThumbRight.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    shoulderRange.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    shoulderRight.style.right =  (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
}
setRightValue_Shoulder();

shoulderInputLeft.addEventListener("input", setLeftValue_Shoulder);
shoulderInputRight.addEventListener("input", setRightValue_Shoulder);


shoulderInputLeft.addEventListener("mouseover", function() {
    shoulderThumbLeft.classList.add("hover");
});
shoulderInputLeft.addEventListener("mouseout", function() {
    shoulderThumbLeft.classList.remove("hover");
});
shoulderInputLeft.addEventListener("mousedown", function() {
    shoulderThumbLeft.classList.add("active");
});
shoulderInputLeft.addEventListener("mouseup", function() {
    shoulderThumbLeft.classList.remove("active");
});


shoulderInputRight.addEventListener("mouseover", function() {
    shoulderThumbRight.classList.add("hover");
});
shoulderInputRight.addEventListener("mouseout", function() {
    shoulderThumbRight.classList.remove("hover");
});
shoulderInputRight.addEventListener("mousedown", function() {
    shoulderThumbRight.classList.add("active");
});
shoulderInputRight.addEventListener("mouseup", function() {
    shoulderThumbRight.classList.remove("active");
});


//bust======================================================================
var bustInputLeft = document.getElementById("bust-input-left");
var bustInputRight = document.getElementById("bust-input-right");
var bustLeft = document.getElementById("bust_left");
var bustRight = document.getElementById("bust_right");

var bustThumbLeft = document.querySelector(".slider.bust>.thumb.left");
var bustThumbRight = document.querySelector(".slider.bust>.thumb.right");
var bustRange = document.querySelector(".slider.bust>.range");

function setLeftValue_bust() {
    var _this = bustInputLeft,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.min(parseInt(_this.value), parseInt(bustInputRight.value)-1);

    var percent = ((_this.value - min) / (max - min))*100;

    // thumbLeft.style.left = percent + "%";
    // range.style.left = percent + "%";

    bustThumbLeft.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    bustRange.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    bustLeft.style.left = (percent+((-3)*percent/(max-min))) + "%";
}
setLeftValue_bust();

function setRightValue_bust() {
    var _this = bustInputRight,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.max(parseInt(_this.value), parseInt(bustInputLeft.value)+1);

    var percent = ((_this.value - min) / (max - min))*100;

    bustThumbRight.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    bustRange.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    bustRight.style.right =  (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
}
setRightValue_bust();

bustInputLeft.addEventListener("input", setLeftValue_bust);
bustInputRight.addEventListener("input", setRightValue_bust);

bustInputLeft.addEventListener("mouseover", function() {
    bustThumbLeft.classList.add("hover");
});
bustInputLeft.addEventListener("mouseout", function() {
    bustThumbLeft.classList.remove("hover");
});
bustInputLeft.addEventListener("mousedown", function() {
    bustThumbLeft.classList.add("active");
});
bustInputLeft.addEventListener("mouseup", function() {
    bustThumbLeft.classList.remove("active");
});

bustInputRight.addEventListener("mouseover", function() {
    bustThumbRight.classList.add("hover");
});
bustInputRight.addEventListener("mouseout", function() {
    bustThumbRight.classList.remove("hover");
});
bustInputRight.addEventListener("mousedown", function() {
    bustThumbRight.classList.add("active");
});
bustInputRight.addEventListener("mouseup", function() {
    bustThumbRight.classList.remove("active");
});


//WAIST======================================================================
var waistInputLeft = document.getElementById("waist-input-left");
var waistInputRight = document.getElementById("waist-input-right");
var waistLeft = document.getElementById("waist_left");
var waistRight = document.getElementById("waist_right");

var waistThumbLeft = document.querySelector(".slider.waist>.thumb.left");
var waistThumbRight = document.querySelector(".slider.waist>.thumb.right");
var waistRange = document.querySelector(".slider.waist>.range");

function setLeftValue_Waist() {
    var _this = waistInputLeft,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.min(parseInt(_this.value), parseInt(waistInputRight.value)-1);

    var percent = ((_this.value - min) / (max - min))*100;

    // thumbLeft.style.left = percent + "%";
    // range.style.left = percent + "%";

    waistThumbLeft.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    waistRange.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    waistLeft.style.left = (percent+((-3)*percent/(max-min))) + "%";
}
setLeftValue_Waist();

function setRightValue_Waist() {
    var _this = waistInputRight,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.max(parseInt(_this.value), parseInt(waistInputLeft.value)+1);

    var percent = ((_this.value - min) / (max - min))*100;

    waistThumbRight.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    waistRange.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    waistRight.style.right =  (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
}
setRightValue_Waist();

waistInputLeft.addEventListener("input", setLeftValue_Waist);
waistInputRight.addEventListener("input", setRightValue_Waist);

waistInputLeft.addEventListener("mouseover", function() {
    waistThumbLeft.classList.add("hover");
});
waistInputLeft.addEventListener("mouseout", function() {
    waistThumbLeft.classList.remove("hover");
});
waistInputLeft.addEventListener("mousedown", function() {
    waistThumbLeft.classList.add("active");
});
waistInputLeft.addEventListener("mouseup", function() {
    waistThumbLeft.classList.remove("active");
});

waistInputRight.addEventListener("mouseover", function() {
    waistThumbRight.classList.add("hover");
});
waistInputRight.addEventListener("mouseout", function() {
    waistThumbRight.classList.remove("hover");
});
waistInputRight.addEventListener("mousedown", function() {
    waistThumbRight.classList.add("active");
});
waistInputRight.addEventListener("mouseup", function() {
    waistThumbRight.classList.remove("active");
});



//SLEEVE======================================================================
var sleeveInputLeft = document.getElementById("sleeve-input-left");
var sleeveInputRight = document.getElementById("sleeve-input-right");
var sleeveLeft = document.getElementById("sleeve_left");
var sleeveRight = document.getElementById("sleeve_right");

var sleeveThumbLeft = document.querySelector(".slider.sleeve>.thumb.left");
var sleeveThumbRight = document.querySelector(".slider.sleeve>.thumb.right");
var sleeveRange = document.querySelector(".slider.sleeve>.range");

function setLeftValue_Sleeve() {
    var _this = sleeveInputLeft,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.min(parseInt(_this.value), parseInt(sleeveInputRight.value)-1);

    var percent = ((_this.value - min) / (max - min))*100;

    // thumbLeft.style.left = percent + "%";
    // range.style.left = percent + "%";

    sleeveThumbLeft.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    sleeveRange.style.left = (percent+((-3)*percent/(max-min))+1) + "%";
    sleeveLeft.style.left = (percent+((-3)*percent/(max-min))) + "%";
}
setLeftValue_Sleeve();

function setRightValue_Sleeve() {
    var _this = sleeveInputRight,
        min = parseInt(_this.min),
        max = parseInt(_this.max);

    _this.value = Math.max(parseInt(_this.value), parseInt(sleeveInputLeft.value)+1);

    var percent = ((_this.value - min) / (max - min))*100;

    sleeveThumbRight.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    sleeveRange.style.right = (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
    sleeveRight.style.right =  (((100 - percent)+((-3)*(100 - percent)/(max-min))+1)) + "%";
}
setRightValue_Sleeve();

sleeveInputLeft.addEventListener("input", setLeftValue_Sleeve);
sleeveInputRight.addEventListener("input", setRightValue_Sleeve);

sleeveInputLeft.addEventListener("mouseover", function() {
    sleeveThumbLeft.classList.add("hover");
});
sleeveInputLeft.addEventListener("mouseout", function() {
    sleeveThumbLeft.classList.remove("hover");
});
sleeveInputLeft.addEventListener("mousedown", function() {
    sleeveThumbLeft.classList.add("active");
});
sleeveInputLeft.addEventListener("mouseup", function() {
    sleeveThumbLeft.classList.remove("active");
});

sleeveInputRight.addEventListener("mouseover", function() {
    sleeveThumbRight.classList.add("hover");
});
sleeveInputRight.addEventListener("mouseout", function() {
    sleeveThumbRight.classList.remove("hover");
});
sleeveInputRight.addEventListener("mousedown", function() {
    sleeveThumbRight.classList.add("active");
});
sleeveInputRight.addEventListener("mouseup", function() {
    sleeveThumbRight.classList.remove("active");
});



/* =========================================================== */

function all_checked() {
  // 1. checkbox element를 찾습니다.
  const checkbox = document.getElementById('typeAll');
  // 2. checked 속성을 체크합니다.
  if(checkbox.checked) {
  	document.getElementById('outer_cate').classList = 'cate_none';
  	document.getElementById('top_cate').classList = 'cate_none';
  	document.getElementById('pants_cate').classList = 'cate_none';
  	document.getElementById('skirt_cate').classList = 'cate_none';
  	document.getElementById('onepiece_cate').classList = 'cate_none';
  } else if(!checkbox.checked) {
  	document.getElementById('outer_cate').classList.remove('cate_none');  
  	document.getElementById('top_cate').classList.remove('cate_none');  
  	document.getElementById('pants_cate').classList.remove('cate_none');  
  	document.getElementById('skirt_cate').classList.remove('cate_none');  
  	document.getElementById('onepiece_cate').classList.remove('cate_none');  
  }
}

function outer_is_checked() {
  // 1. checkbox element를 찾습니다.
  const checkbox = document.getElementById('type1');
  // 2. checked 속성을 체크합니다.
  if(checkbox.checked) {
  	document.getElementById('outer_cate').classList = 'cate_none';
  } else if(!checkbox.checked) {
  	document.getElementById('outer_cate').classList.remove('cate_none');  
  }
}

function top_is_checked() {
  // 1. checkbox element를 찾습니다.
  const checkbox = document.getElementById('type2');
  // 2. checked 속성을 체크합니다.
  if(checkbox.checked) {
  	document.getElementById('top_cate').classList = 'cate_none';
  } else if(!checkbox.checked) {
  	document.getElementById('top_cate').classList.remove('cate_none');  
  }
}

function pants_is_checked() {
  // 1. checkbox element를 찾습니다.
  const checkbox = document.getElementById('type3');
  // 2. checked 속성을 체크합니다.
  if(checkbox.checked) {
  	document.getElementById('pants_cate').classList = 'cate_none';
  } else if(!checkbox.checked) {
  	document.getElementById('pants_cate').classList.remove('cate_none');  
  }
}

function skirt_is_checked() {
  // 1. checkbox element를 찾습니다.
  const checkbox = document.getElementById('type4');
  // 2. checked 속성을 체크합니다.
  if(checkbox.checked) {
  	document.getElementById('skirt_cate').classList = 'cate_none';
  } else if(!checkbox.checked) {
  	document.getElementById('skirt_cate').classList.remove('cate_none');  
  }
}
function onepiece_is_checked() {
  // 1. checkbox element를 찾습니다.
  const checkbox = document.getElementById('type5');
  // 2. checked 속성을 체크합니다.
  if(checkbox.checked) {
  	document.getElementById('onepiece_cate').classList = 'cate_none';
  } else if(!checkbox.checked) {
  	document.getElementById('onepiece_cate').classList.remove('cate_none');  
  }
}

/**================================================= */
function allElemetsChecked() {
	console.log(0);
	const checkboxType = document.querySelectorAll('input[name="type_chk"]:checked');
	const checkboxCategory = document.querySelectorAll('input[name="category_chk"]:checked');
	const checkboxShape = document.querySelectorAll('input[name="shape_chk"]:checked');

	console.log(1);
	if (checkboxType.length == 0) {
		console.log(2);
		alert("대분류를 선택하세요.");
		return false;
	} else  if (checkboxCategory.length == 0) {
		console.log(3);
		alert("소분류를 선택하세요.");
		return false;
	} else if (checkboxShape.length == 0) {
		console.log(4);
		alert("체형을 선택하세요.");
		return false;
	}
	console.log(5);
	return true;
}




