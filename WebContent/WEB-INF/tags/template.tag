<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="head" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="user-scalable=0, width=device-width, initial-scale=1.0,  minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css"
	media="all" />

</head>
<body>
	<!-- Include LivePerson tag file -->
	<script type="text/javascript" src="le-mtagconfig.js">
		
	</script>

	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="index.jsp">Button Test</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">Site Id: <span id="sd"></span></a></li>
					<li><a href="#">Unit: <span id="un"></span></a></li>
					<li><a href="#">Language: <span id="lan"></span></a></li>
					<li><a href="#">Div Id: <span id="div"></span></a></li>
				
				</ul>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<jsp:doBody />
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript" src="resources/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		try {
			$("#sd").html(sessionStorage.siteId);
			$("#un").html(sessionStorage.unit);
			$("#lan").html(sessionStorage.language);
			$("#div").html(sessionStorage.div);
		} catch (e) {
			alert(e);
		}
		try {
			$('input[name=Id]').val(sessionStorage.siteId);
			$('input[name=Unit]').val(sessionStorage.unit);
			$('input[name=Lang]').val(sessionStorage.language);
			$('input[name=Div]').val(sessionStorage.div);
			$('.lpdiv').prop('id', sessionStorage.div);
			
		}
		
		catch (e) {
			alert(e);
		}
		//alert(sessionStorage.siteId)
	</script>
</body>
</html>