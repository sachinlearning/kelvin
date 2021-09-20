<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Zoomable treemap template</title>
    <style>
        html,
        body,
        #scatter {
            width: 100%;
            height: 96%;
            margin: 0;
            padding: 0;
        }
		.hideSpan{
			display:none;
		}
        #scatter>svg {
            display: block;
        }
		.tau-chart__legend__guide--color.color-a,
		.color-a {
		  fill: #ff0000;
		  background-color: #ff0000;
		}

		.tau-chart__legend__guide--color.color-b,
		.color-b {
		  fill: #ffae00;
		  background-color:#ffae00;
		}

		.tau-chart__legend__guide--color.color-c,
		.color-c {
		  fill: #6fff00;
		  background-color:#6fff00;
		}
		.bg-light {
    background-color: #f8f9fa!important;
}
		.logo {
			height: 5vh;
		}
		.navbar {
		padding:8px 16px;
		margin-bottom:20px;
			box-shadow: 0px 8px 7px -5px grey;
		}
		.tau-chart__layout__content{padding-left:10px ! important}
		
		.loader {
		  border: 16px solid #f3f3f3;
		  border-radius: 50%;
		  border-top: 16px solid #3498db;
		  width: 120px;
		  height: 120px;
		  position:relative;
		  left:48%;
		  top:38%;
		  -webkit-animation: spin 2s linear infinite; /* Safari */
		  animation: spin 2s linear infinite;
		}

		/* Safari */
		@-webkit-keyframes spin {
		  0% { -webkit-transform: rotate(0deg); }
		  100% { -webkit-transform: rotate(360deg); }
		}

		@keyframes spin {
		  0% { transform: rotate(0deg); }
		  100% { transform: rotate(360deg); }
		}

    </style>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/scatter.css">    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/taucharts.min.css">    
    <script src="${pageContext.request.contextPath}/resources/js/d3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/resources/js/taucharts.min.js" type="text/javascript"></script>
	
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>

	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/resources/img/Kelvinlogo.png" class="logo"></img></a>
			</nav>
			<div class="loader"></div>
    <div id="scatter"></div>

    <script>
	
    	var url_string = window.location.href; //window.location.href
        var url = new URL(url_string);
        var uniqueId = url.searchParams.get("uniqueId");
    	(function() {  
    		$('.text').text('loading . . .');	
    		$.ajax({
    			type:"GET",
    			url:'api/getMap',
    			contentType: false, // Not to set any content header  
                processData: false, // Not to process data
    			data: 'uniqueId='+uniqueId,
    			success: function(data) {
				
				//set loader false
				$(".loader").hide();
    			 created3Chart(data)
    			},
                error: function (err) {
									
    			console.log(err);
    			//window.location.href = "apology.html";
                } 
    		});  
    	})();
    	function created3Chart(jdata){
    		var chart = new Taucharts.Chart({
                    guide: {
                        color: {
                        brewer: ['color-a', 'color-b', 'color-c']
                        }
                    }, 
                    data: jdata,
                    type: 'scatterplot',
                    x: 'guiTime',
                    y: 'trxCount',
                    color: 'colorCode',
                    plugins: [Taucharts.api.plugins.get('tooltip')(), Taucharts.api.plugins.get('legend')(),Taucharts.api.plugins.get('quick-filter')()],
                    size: 'count'
                });
    			
    			$("#spanel").addClass('hideSpan');
    			chart.renderTo('#scatter');
    	};    
    </script>
</body>

</html>