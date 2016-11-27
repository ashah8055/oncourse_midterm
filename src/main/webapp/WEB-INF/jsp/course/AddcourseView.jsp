<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!--  private String code;

    private String name;

    private int units;
 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="course">
<table>
<tr>
<td>Code<td><form:input path="code" class="form-control"  placeholder="Code no." required="required"/> 
</tr>
<tr>
<td>Name<td><form:input path="name" class="form-control"  placeholder="Name" required="required"/> 
</tr>
<tr>
<td>Units<td><form:input path="units" class="form-control"  placeholder="units" required="required"/> 
</tr>
<tr>
<td>Obsolete<td><form:checkbox path="obsolete" class="form-control"/> 
</tr>


<tr>
<td><input type="submit" value="Add"> 
</tr>

</table>
</form:form>
</body>
</html>