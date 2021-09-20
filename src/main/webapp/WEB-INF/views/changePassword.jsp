<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.heatmap.constants.AppConstant"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TSP Kelvin</title>
</head>
<body>
	<form:form name="submitForm" action="updatePassword" method="POST">
		
		<div align="center">
		<div style="color: black;">${msg}</div>
			<table>
				<tr>
					<td>Email</td>
					<td><input type="text" name="showEmail" disabled="disabled"   value="${email}"/></td>
					<td><input type="hidden" name="email"    value="${email}"/></td>
				</tr>
				<tr>
					<td>New Password</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type="password" name="confirmPassword"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
			<div id="error" style="color: red">${error}</div>

		</div>
	</form:form>
</body>
</html>