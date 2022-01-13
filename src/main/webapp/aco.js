/**
 * 
 */
/*$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});*/
let roll=document.getElementById('roll')
let name1=document.getElementById('name1')
const addData= document.getElementById('addData')
addData.addEventListener('click',function(){
	
	let table = document.getElementById('myTable')
let row= table.insertRow();
let cell =row.insertCell();
let cell2=row.insertCell();
cell.innerHTML=roll.value;
cell2.innerHTML=roll2.value;
console.log("clicked")

	
})

