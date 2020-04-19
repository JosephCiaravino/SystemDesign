$( document ).ready(function() {
    console.log( "Private JS ready!" );
    //alert("PRIVATE CUSTOM JS WORKING");

   $(".addFacultyControls").hide(); 
   $('#usertype').change(function() {
	var value = $("#usertype option:selected").val();
	//To display the selected value we used <p id="result"> tag in HTML file
	if(value=='student'){
		$(".addStudentControls").show();
		$(".addFacultyControls").hide();
	}else if(value=='faculty'){
		$(".addStudentControls").hide();
		$(".addFacultyControls").show();
	}else{
		$(".addStudentControls").hide();
		$(".addFacultyControls").hide();
	}


	});


  $(".toggleAddRmv2").hide();
  $(".toggleAddRmv1").show();
 $("#addOrRemoveProgram").on("change", function(){
 	let value = $('#addOrRemoveProgram option:selected').val();
 	if(value == 'remove'){
 		$(".toggleAddRmv2").show();
 		$(".toggleAddRmv1").hide();
 		document.querySelector("#changeBtn").innerHTML = "Delete This Program Or Major";

 	}else if(value = 'add'){
 		$(".toggleAddRmv2").hide();
 		$(".toggleAddRmv1").show();
 		document.querySelector("#changeBtn").innerHTML = "<span>Add This Program Or Major</span>";
 	}
 });

$("#gradProgramDec").hide();
$("#studentLevelChoice").on("change", function(){
	if(document.querySelector("#graduate").checked){
		console.log("CHECKING IF");
		$("#gradProgramDec").show();
		$("#undergradStudyDetails").hide();
		
	
	}
	else if(!document.querySelector("#graduate").checked){
		console.log("CHECKING ELSE");
		$("#gradProgramDec").hide();
		$("#undergradStudyDetails").show();
		
		
	}
 
});



$(".hideIt-dept").hide();

$("#adminUpdateUser").on("change", function(){
	console.log("CHANGED");
	if(document.querySelector("#adminEditOther").checked){
		console.log("CHECKING IF");
		$(".hideIt").hide();
		
		
	}
	else if(document.querySelector("#adminEditFaculty").checked){
		console.log("CHECKING ELSE");
		$(".hideIt").show();
		$(".hideIt-dept").show();
		$(".hideIt-grade").hide();
	
		
	}else if(document.querySelector("#adminEditStudent").checked){
		console.log("CHECKING LAST");
		$(".hideIt").show();
		$(".hideIt-grade").show();
		$(".hideIt-dept").hide();
	}
 
});








});//end script