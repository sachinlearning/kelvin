<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.heatmap.constants.AppConstant"%>
<%
	response.setHeader("pragma", "no-cache");
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html>
<meta http-equiv="Cache-control" content="no-cache">
<head>
<title>TSP Kelvin</title>
<link rel=stylesheet href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/appBootStrap.css">


</head>
<body>
	<nav class="navbar fixed-top navbar-light bg-light">
		<a class="navbar-brand" href="#"><img alt="TSP Kelvin"
			src="${pageContext.request.contextPath}/resources/img/Kelvinlogo.png" class="logo"></img></a> <a
			href="${AppConstant.LOGOUT}">
			<button type="button" id="logout" class="btn btn-primary floatright">Logout</button>
		</a>
	</nav>

	<section class="page1">
		<div class="container col-md-12">
			<div class="text-center index-row">
				<h1>3 Step Guide</h1>
			</div>
			<div class=" row col-md-12 index-row">
				<div class="col-md-4 step-card text-center">
					<H3>Step-1: Download Template</H3>
					<img class="steps" src="${pageContext.request.contextPath}/resources/img/Step1.png">
				</div>
				<div class="col-md-4 step-card text-center">
					<H3>Step-2: Upload Filled Sheet</H3>
					<img class="steps" src="${pageContext.request.contextPath}/resources/img/Step2.png">
				</div>
				<div class="col-md-4 step-card text-center">
					<H3>Step-3: Plot Chart</H3>
					<img class="steps" src="${pageContext.request.contextPath}/resources/img/Step3.png">
				</div>
			</div>
		</div>
	</section>
	<footer class="fixed-bottom text-right footer">
		<div class="progress mb-1">
			<div class="progress-bar progress-bar-striped progress-bar-animated"
				role="progressbar" aria-valuenow="75" aria-valuemin="0"
				aria-valuemax="100" style="width: 37%"></div>
		</div>
		<a href="${AppConstant.TEMPLATEDOWNLOAD}"><button type="button"
				class="btn btn-lg btn-light">Download Template</button></a>
	</footer>
</body>
</html>