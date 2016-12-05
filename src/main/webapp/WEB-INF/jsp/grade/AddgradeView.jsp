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
<body>

	<form:form modelAttribute="course" method="post">
		<table>
			<tr>
				<td>Course</td>
				<td><form:select path="code">
						<form:options items="${courses}" itemValue="id" itemLabel="code" />
					</form:select></td>
			</tr>
			<tr>
				<td>Grade</td>
				<%--   <c:out value="${grades}"></c:out> 
 --%>
				<td><form:select path="name">
						<form:options items="${grades}" itemValue="id" itemLabel="symbol" />
					</form:select></td>
			</tr>
			<tr>
				<td>Year
				<td><select id="year" name="year"></select> <script>
					var select = document.getElementById('year'), year = new Date()
							.getFullYear(), html = '<option>Select Year</option>';

					for (i = year; i >= year - 3; i--) {
						html += '<option value="' + i + '">' + i + '</option>';
					}

					select.innerHTML = html;
				</script>
			</tr>
			<tr>
				<td>Term
				<td><select id="term" name="term">
						<option value="fall">Fall</option>
						<option value="spring">Spring</option>
						<option value="winter">Winter</option>
						<option value="winter">Summer</option>


				</select></td>
			</tr>
		</table>

		<button type="submit" class="btn-lg btn-primary pull-right">Submit</button>
	</form:form>
</body>
</html>