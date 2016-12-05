
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OnCourse - Programs</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script>
$(function() {
	$("#program-display").dialog({
		autoOpen : false
	});
	
	$(".view").click(viewProgram);

});

	function viewProgram() {
		alert("amar"); 
		var progId = $(this).closest("tr").attr("data-program-id");
		 //alert("program id" +progId);
		 $.ajax({
	    	    url:"program/"+ progId, 
	    	   dataType:"json", 
	    	   data : JSON.stringify(data),
	    		success: function(data){
	    			    $("#user-display td[data-field='program_id']").html(data.id);
	    	            $("#user-display td[data-field='program_name']").html(data.name);
	    	            $("#user-display td[data-field='program_description']").html(data.description);
	    	           

	    		},
	    		error: function(e){
	    			alert(e);
	    		}

	       });
		 $("#program-display").dialog("open");
			}

	
</script>
</head>
<body>
	<h2>
		<a href="../index.html">OnCourse</a>
	</h2>
	<h3>Programs</h3>
	<table id="programs" border="2">
		<tr>
			<th>Department</th>
			<th>Name</th>
			<th>Description</th>
		</tr>
		<c:forEach items="${programs}" var="program">
			<tr data-program-id="${program.id}">
				<td data-field="id">${program.id}</td>
				<td data-field="program">${program.name}</td>
				<td data-field="description">${program.description}</td>
				<td data-field="department">${program.department.name}</td>

				<td> <a class="view" href="javascript:void(0)">View</a> |
     </td>
				<%--  <td><a href="program/ProgramView.html?id=${program.id}">View</a>
 --%>
			</tr>    
		</c:forEach>

	</table>
	<div id="program-display">
		<table>
			<tr>
				<th>ID</th>
				<td data-field="program_id"></td>
			</tr>
			<tr>
				<th>Program</th>
				<td data-field="program_name"></td>
			</tr>
			<tr>
				<th>Description</th>
				<td data-field="program_description"></td>
			</tr>
		<!-- 	<tr>
				<th>Department</th>
				<td data-field="program_department"></td>
			</tr>
		 --></table>
	</div>

</body>
</html>
