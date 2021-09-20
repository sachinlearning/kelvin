<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.heatmap.constants.AppConstant"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TSP Kelvin</title>
<script src="${pageContext.request.contextPath}/resources/js/71bf2ea519.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<link rel=stylesheet href="${pageContext.request.contextPath}/resources/css/style.css">
<link href="${pageContext.request.contextPath}/resources/css/taucharts.min.css" rel="stylesheet"
	type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/d3.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/taucharts.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/scatter.css">
<script src="${pageContext.request.contextPath}/resources/js/scatterplot.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="loaderWrapper" class="loaderWrapper">
		<div class="loader"></div>
	</div>

	<div class="wrapper">
		<nav class="navbar navbar-light bg-light">
			<a class="navbar-brand" href="#"><img alt="TSP Kelvin"
				src="${pageContext.request.contextPath}/resources/img/Kelvinlogo.png" class="logo"></img></a>
			<a href="${AppConstant.LOGOUT}">
		<button type="button" id="logout" class="btn btn-primary floatright">Logout</button></a>
			<button type="button" id="saveChart"
				class="btn btn-primary floatright">save chart</button>
			</nav>
		<section id="downloadSection">
			<div class="container">
				<div class="row m-t-50">
					<div class="col-md-6 col-sm-12">
						<h4>Download template</h4>
						<a href="${pageContext.request.contextPath}/resources/sample/sample.xlsx"><img alt="Download"
							src="${pageContext.request.contextPath}/resources/img/download.png" width=300 height="300"></a>
					</div>
					<div class="col-md-6 col-sm-12">
						<h3>Instructions before proceeding</h3>
						<video width="100%" controls >
							<source src="${pageContext.request.contextPath}/resources/video/TSPKelvin.mp4" type="video/mp4">
						</video>
					</div>
				</div>
			</div>
		</section>
		<section id="uploadSection" class="uploadSection">
			<div class="container">
				<div class="uploadWrapper text-center">
					<div id="formwrapper" class="formwrapper">
						<form id="form">
							<i class="fa fa-upload faa-burst animated fa-4x"></i> <input
								id="fileUpload" type="file" name="file" required
								accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" />
							<div class="drag-text"></div>
						</form>

					</div>
				</div>

			</div>
			<h5 id="uploadStatus"
				class="uploadStatus text-center m-t-50 user-select-none">Please
				choose file</h5>
		</section>
		<section id="scatterSection" class="scatterSection">
			<div id="scatter"></div>
		</section>
		<section id="apology">
			<div class="container">
				<div class="jumbotron m-t-100">
					<p>Sorry something went wrong. Apology for the inconvinence.
						Kindly click on the below link to upload your file again.</p>
					<p class="text-center">
						<a href="index.html" class="btn btn-info" role="button">Upload
							File</a>
					</p>
				</div>
			</div>
		</section>
		<section id="sentmail">
			<div class="container">
				<div class="jumbotron m-t-100">
					<p id="emailStatus"></p>
				</div>
			</div>
		</section>
		<!-- Modal -->
		<div class="modal" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<form id="form" id="mailsaveform">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">scatter chart</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-12 my-2">
									<input type="text" class="form-control" value=""
										placeholder="First Name" name="firstName" id="firstName" />
								</div>
								<span id='fresult' class="m-l-15 errormsg"></span>
								<div class="col-12 my-2">
									<input type="text" class="form-control" placeholder="Last Name"
										name="lastName" id="lastName" />
								</div>
								<div class="col-12 my-2">
									<input type="text" class="form-control" placeholder="Email Id"
										name="email" id="email" />
								</div>
								<span id='eresult' class="m-l-15 errormsg"></span>
							</div>
						</div>
						<div class="modal-footer">
							<button id="closeModal" type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button id="savebtnmail" type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<footer id="footers" class="fixed-bottom text-right footer">
			<div class="progress mb-1">
				<div class="progress-bar progress-bar-striped progress-bar-animated"
					role="progressbar" aria-valuenow="75" aria-valuemin="0"
					aria-valuemax="100" style="width: 89%"></div>
			</div>
			<button id="backBtn" onclick="history.go(-1);" type="button" class="btn btn-lg btn-light">Back</button>
			<button id="downloadBtn" click="plotChart" type="button"
				class="btn btn-lg btn-light">Go To Next Step</button>
			<button id="nextBtns" click="plotChart" type="button"
				class="btn btn-lg btn-light">Generate Dashboard</button>
		</footer>
	</div>
</body>

</html>