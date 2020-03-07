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


});