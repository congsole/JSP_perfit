$(document).ready(function() {
	//	var b = parseInt(document.querySelector('#bust').value);
	//	var w = parseInt(document.querySelector('#waist').value);
	//	var h = parseInt(document.querySelector('#hip').value);
	//	if(b != null && w != null && h != null && b != 0 && w != 0 && h != 0) {
	//		var questionBox = document.getElementById("question");
	//		var aboveBox = document.getElementById("result_above");
	//		var describeBox = document.getElementById("result_below");
	//		questionBox.style.display = "none";
	//		aboveBox.style.display = "flex";
	//		describeBox.style.display = "block";		

	resultS();

	//	}
});

function resultS() {
	var b = parseInt(document.querySelector('#bust').value);
	var w = parseInt(document.querySelector('#waist').value);
	var h = parseInt(document.querySelector('#hip').value);
	var shape = 'Error';
	//version 3
	if (b - h >= 0) {
		if (b - w < -5.1) { shape = 'Circle'; }
		else {
			if (h - b <= -5.1) { shape = 'InvertedTriangle'; }
			else {
				if (w / h < 0.8 && w / h > 0) {
					shape = 'Hourglass';
					console.log(w / h)
				} else if (w / h >= 0.8 && w / h > 0) {
					shape = 'Rectangle';
				} else { shape = 'Error'; }
			}
		}
	} else if (b - h < 0) {
		if (w - h > +5.1) { shape = 'Circle'; }
		else {
			if (h - b >= 5.1) { shape = 'Triangle'; }
			else {
				if (w / h < 0.8 && w / h > 0) {
					shape = 'Hourglass';
					console.log(w / h)

				} else if (w / h >= 0.8 && w / h > 0) {
					shape = 'Rectangle';
				} else { shape = 'Error'; }
			}
		}
	}
	//////////////////////////////////////////////////
	// version 2
	//	if (b - w < 5.1 || w - h > 5.1) {
	//		shape = 'Circle';
	//	} else {
	//		if (h - b >= 5.1) {
	//			shape = 'Triangle';
	//		} else if (h - b <= -5.1) {
	//			shape = 'InvertedTriangle';
	//		} else {
	//			if (w / h < 0.8) {
	//				shape = 'Hourglass';
	//			} else if (w / h >= 0.8) {
	//				shape = 'Rectangle';
	//			} else { shape = 'Error'; }
	//		}
	//	}
	//////////////////////////////////////////////////
	// version 1
	//	if(w-b > 5 && w-h > 5) {	
	//		shape = 'Circle';
	//	} else {
	//		if(h-b == 0) {
	//			if (w-b > 2.5 && w-h > 2.5) {
	//				shape = 'Rectangle';
	//			}
	//			else {shape = 'Hourglass';}
	//		} else if(h-b < 0) {
	//			shape = 'InvertedTriangle';
	//		} else if (h-b > 5.1){
	//			shape = 'Triangle';
	//		} else {
	//			shape = 'Hourglass';
	//		}
	//	}
	if (b != 0 && w != 0 && h != 0) { document.querySelector('#memberShape').value = shape; }
}

function resultP() {
	var b = parseInt(document.querySelector('#bust').value);
	var w = parseInt(document.querySelector('#waist').value);
	var h = parseInt(document.querySelector('#hip').value);
	var shape = 'Error';

	if (b - h >= 0) {
		if (b - w < -4) { shape = 'Circle'; }
		else {
			if (h - b <= -4) { shape = 'InvertedTriangle'; }
			else {
				if (w / h < 0.8 && w / h > 0) {
					shape = 'Hourglass';
					console.log(w / h)
				} else if (w / h >= 0.8 && w / h > 0) {
					shape = 'Rectangle';
				} else { shape = 'Error'; }
			}
		}
	} else if (b - h < 0) {
		if (w - h > +4) { shape = 'Circle'; }
		else {
			if (h - b >= 4) { shape = 'Triangle'; }
			else {
				if (w / h < 0.73 && w / h > 0) {
					shape = 'Hourglass';
					console.log(w / h)

				} else if (w / h >= 0.73 && w / h > 0) {
					shape = 'Rectangle';
				} else { shape = 'Error'; }
			}
		}
	}
	if (b != 0 && w != 0 && h != 0) { document.querySelector('[name="shape"]').value = shape; }
		
}


document.querySelectorAll('input').forEach(
	this.addEventListener("keyup", (e) => resultS())
);




