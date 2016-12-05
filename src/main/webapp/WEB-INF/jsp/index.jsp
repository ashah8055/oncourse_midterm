<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OnCourse</title>
</head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
 $( function() {
	

            $("#main").tabs(
            		{active:0
            			});
            
        
});
</script>



<body>

	<h2>OnCourse</h2>
	<p>
				
		<%-- <security:authorize access="anonymous">
 --%>			<a href="<c:url value='/login.html' />">Login</a>
<%-- 		</security:authorize>
		<security:authorize access="authenticated">
 --%><%-- 			<security:authorize access="hasAnyRole('ADMIN','ADVISOR')">
	  --%>			<div id="main">
	  
					<ul>
						<li><a href="course/list.html">Course</a></li>
						<li><a href="department/list.html">Department</a></li>
						<li><a href="program/list.html">Program</a></li>
						<li><a href="grade/list.html">Grades</a></li>

				</ul>
			</div>
			 
		<%-- 	</security:authorize>
		 --%>		
			<a href="<c:url value='/logout' />">Logout</a>
		<%-- </security:authorize>
 --%>
		 

	<p>OnCourse is a system that helps students to stay on course in
		their academic career.</p>
 </body>
</html>
