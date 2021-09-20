<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 100px;
	text-align: center;
	align: center;
}

input[type=text], [type=password], [type=number] {
	width: 20%;
	margin: 8px 0;
	padding: 7px 10px;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	width: 10%;
	padding: 9px 5px;
	margin: 5px 0;
	cursor: pointer;
	border: none;
	color: #ffffff;
	margin-left: 80px;
}

button:hover {
	opacity: 0.8;
}

#fn, #ln, #un, #pwd, #em, #mn, #fm, #cy {
	font-family: 'Lato', sans-serif;
	color: gray;
}

#em {
	margin-left: 30px;
}
</style>

</head>
<body>
	<form:form name="regi" action="registerProcess" method="post">
		<h2>Registration Form</h2>

		<label for="firstName" id="fn">First Name :</label> <input type="text"
			name="firstName" id="firstName"><br /> &nbsp;<label
			for="lastName" id="ln">Last Name :</label> <input type="text"
			name="lastName" id="lastName"><br /> &nbsp;&nbsp;<label
			for="password" id="pwd">Password :</label> <input type="password"
			name="password" id="r4"><br /> &nbsp;&nbsp;&nbsp;<label
			for="confirmPassword" id="pwd">Confirm Password :</label> <input
			type="password" name="confirmPassword" id="confirmPassword"><br />
		&nbsp;&nbsp;&nbsp;<label for="email" id="em">Email :</label> <input
			type="text" name="email" id="email"><br /> &nbsp;&nbsp;<label
			for="company" id="mn">Company :</label> <input type="text"
			name="company" id="company"><br /> <br />

		<button type="submit" value="Submit" id="button">Register</button>
		<button type="reset" value="Reset" id="resetbutton">Reset</button>

	</form:form>
</body>
</html>

