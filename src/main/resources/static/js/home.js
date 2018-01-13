$(document).ready(function(e){
   
	alert('Home form...');
	
	$('.search-panel .dropdown-menu').find('a').click(function(e) {
		e.preventDefault();
		var param = $(this).attr("href").replace("#","");
		var concept = $(this).text();
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #search_param').val(param);
	});
    
    
    $('#searchBtn').click(function(){
    	var val = $('#searchTxt').val();
    	$.ajax({
			type : "GET",
			contentType : "application/json;charset=utf-8",
			url : "searchContacts.htm",
			data : {"searhTxt" : val},
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				$.each(data, function(index, currEmp) {
		             console.log(currEmp.name); //to print name of employee
		         }); 
				
			},
			error : function(e) {
				console.log("ERROR: ", e);
				// display(e);
			},
			done : function(e) {
				console.log("DONE");
			}
		});
    	
    });
	
	
    $('#contact-list').css("display", "none");
    
});