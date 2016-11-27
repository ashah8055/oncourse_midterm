<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OnCourse - Courses</title>
</head>
<body>
<h2><a href="../index.html">OnCourse</a></h2>
<h3>Courses</h3>
<table border="1">
<tr><th>Code</th><th>Name</th><th>Units</th></tr>
<c:forEach items="${courses}" var="course">
<tr>
  <td>${course.code}</td>
  <td>${course.name}</td>
  <td style="text-align: center;">${course.units}</td>
  <td><a href="EditcourseView.html?id=${course.id}">Edit</a>
</tr>
</c:forEach>
<tr>
<td><a href="AddcourseView.html">Add</a></td>
</tr>
</table>
</body>
</html>
