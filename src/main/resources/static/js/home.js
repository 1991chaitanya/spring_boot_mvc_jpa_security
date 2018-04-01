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
			accept : "application/json;charset=utf-8",
			url : "chefs",
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				$('#contact-list').css("display", "block");
				$.each(data, function(index, currChef) {
		             console.log(currChef.name); //to print name of employee
		             $("#chef"+(index+1)).append("<span class='glyphicon glyphicon-user name'>"+currChef.name+'</span><br/>');
		             $("#chef"+(index+1)).append("<span class='glyphicon glyphicon-map-marker text-muted c-info' data-toggle='tooltip' title='"+currChef.address+"'></span>");
		             $("#chef"+(index+1)).append("<span class=''><span class='name text-muted'>"+currChef.address+'</span><br/></span>');
		             $("#chef"+(index+1)).append("<span class='glyphicon glyphicon-earphone text-muted c-info' data-toggle='tooltip' title='"+currChef.phone+"'></span>");
		             $("#chef"+(index+1)).append("<span class=''><span class='name text-muted'>"+currChef.phone+'</span><br/></span>');
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