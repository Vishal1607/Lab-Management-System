/**
 * 
 */
 function tableCreate() {
	var tbdy = document.getElementsByTagName('tbody')[0];
	for (var i = 1; i <= 6; i++) {    //Rows
		var tr = document.createElement('tr');
		var text = document.createTextNode(i);
		tr.setAttribute('id', 'CO' + i);
		tr.appendChild(text);//Child parent element ko diya
		for (var j = 1; j <= 15; j++) {  //Col
			var td = document.createElement('td');
			var input = document.createElement('input');
			input.setAttribute('type', 'number');
			input.setAttribute('max','3');
			input.setAttribute('min','0')
			input.setAttribute('oninput', 'this.value = this.value > 3 ? 3 : Math.abs(this.value)');
			//This is for input
			input.addEventListener('blur', function (event) {
				calculateAvg(event.target.parentNode.id);
			});
			td.appendChild(input);
			td.setAttribute('id', 'PO' + i + '-' + j);
			tr.appendChild(td);
		}
		tbdy.appendChild(tr);
	}
	var tftr = document.getElementsByTagName('tfoot')[0];
	for (var k = 1; k <= 2; k++) {
		var tr = document.createElement('tr');
		if (k == 1) {
			var text = document.createTextNode('Avg.');
			tr.setAttribute('id', 'avg' + k);
			tr.appendChild(text);
		} else {
			var text = document.createTextNode('Rounded Avg.');
			tr.setAttribute('id', 'r.avg' + k);
			tr.appendChild(text);
		}
		for (var l = 1; l <= 15; l++) {
			var td = document.createElement('td');
			if (k == 1) {
				td.setAttribute('id', 'avg' + k + l);
			} else {
				td.setAttribute('id', 'r.avg' + k + l);
			}
			tr.appendChild(td);
		}
		tftr.appendChild(tr);
	}
}
tableCreate();
