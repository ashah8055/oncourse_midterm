<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form>
<select id="semester" name="semester">
   <option value="FALL">Fall</option>
   <option value="SPRING">Spring</option>
   <option value="Summer">Summer</option>
 </select>
<select id="course">
   </select>
   
<form:select path="courselists">
   <form:options items="${courselist}" />
</form:select>
   </form:form>	
   </body>
</html>