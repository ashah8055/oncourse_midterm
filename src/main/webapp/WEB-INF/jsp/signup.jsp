<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script language="javascript" type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script language="javascript" type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>



<style type="text/css">
label.error {
	float: none;
	color: red;
	padding-left: .5em;
	vertical-align: top;
}
</style>

<body>
	<form:form modelAttribute="users" id="testform" >
		<table>
			<tr>
				<td><label for="username">Name:&nbsp;</label>
				<td><form:input path="username" class="form-control"
						id="username" name="username" placeholder="username" />
			</tr>

			<tr>
				<td><label for="password">Password:&nbsp;</label>
				<td><form:input path="password" placeholder="password"
						id="password" name="password" class="form-control" />
			</tr>
			<tr>
				<td><label for="email">Email:&nbsp;</label>
				<td><form:input  path="email" class="form-control"
						id="email" name="email" placeholder="email" />
			</tr>
			<tr>
				<td><label for="cin">Cin:&nbsp;</label></td>
				<td><form:input path="cin" class="form-control" id="cin"
						name="cin" placeholder="cin" />
			</tr>


			<tr>
				<td><input type="submit"  value="Submit">
			</tr>

		</table>
	</form:form>

<script>
$(function() {
    $('#username').on('keypress', function(e) {
        if (e.which == 32)
            return false;
    });
});


	// validate signup form on keyup and submit
	$("#testform").validate({
		rules: {
			username: {
				required: true,
				minlength: 2
			},
			password: {
				required: true,
				minlength: 5
			},
 			email: {
				required: true,
				email: true
			}
			
		},
		
		messages: {
		 username:{
				required: "Please enter a username",
				minlength: "Your username must consist of at least 2 characters"
			},
			password:{
				required: "Please provide a password",
				minlength: "Your password must be at least 5 characters long"
			},
			email: "Please enter a valid email address"
	 }
		 
	});
</script>


</body>
</html>