<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Add Match</title>

<!-- Bootstrap Core CSS -->
<link href="${context}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${context}/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${context}/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="${context}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript" src="${context}/datetime/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="${context}/datetime/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="${context}/datetime/bootstrap-datepicker3.css" />

<style type="text/css">
.form-group.required .control-label:after {
	content: "*";
	color: red;
}
</style>

<script>
	$(document).ready(
			function() {
				var date_input = $('input[name="matchDate"]'); //our date input has the name "date"
				var container = $('.bootstrap-iso form').length > 0 ? $(
						'.bootstrap-iso form').parent() : "body";
				var options = {
					format : 'dd/mm/yyyy',
					container : container,
					todayHighlight : true,
					autoclose : true,
				};
				date_input.datepicker(options);
			})
</script>
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Sea Game 2017</a>
			</div>
			<!-- /.navbar-header -->
			<%@include file="includes/header.jsp"%>
			<!-- /.navbar-top-links -->
			<%@include file="includes/left-menu.jsp"%>
			<!-- /.navbar-static-side -->
		</nav>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Cược</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading"></div>
							<div class="panel-body">
								<div class="row">
									<form role="form" lpformnum="1">
										<div class="col-lg-12">

											<div class="form-group col-lg-6	">
												<label>Thời gian </label> <input class="form-control" id="date" name="matchDate" placeholder="dd/mm/yyyy" disabled="disabled" type="text"
													value="24/08/2017" required="required"
												/>
												<p class="help-block">Thời gian diễn ra trận đấu</p>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group">
												<label>Đội Bóng 1</label> <select class="form-control" disabled="disabled">
													<option>Việt Nam</option>
													<option>Thái lan</option>
													<option>Brunei</option>
													<option>Malaysia</option>
												</select>
											</div>

											<div class="form-group">
												<label>Tỉ lệ chấp</label> <input type="number" class="form-control" disabled="disabled" value="2">
												<p class="help-block">Tỉ lệ đội 1 chấp đội 2</p>
											</div>
											<div class="form-group">
												<label>Chọn</label> <label class="radio-inline"> <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1"
													value="option1" checked=""
												>Đội 1
												</label> <label class="radio-inline"> <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Đội 2
												</label>
											</div>
											<button type="submit" class="btn btn-primary">Đặt cược</button>
											<button type="reset" class="btn btn-default">Làm lại</button>
										</div>
										<div class="col-lg-6">
											<div class="form-group">
												<label>Đội Bóng 2</label> <select class="form-control" disabled="disabled">
													<option>Việt Nam</option>
													<option>Thái lan</option>
													<option selected="selected">Brunei</option>
													<option>Malaysia</option>
												</select>
											</div>
										</div>
									</form>
									<!-- /.col-lg-6 (nested) -->
									<!-- /.col-lg-6 (nested) -->
								</div>
								<!-- /.row (nested) -->
							</div>
							<!-- /.panel-body -->
						</div>

					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<!-- 	<script src="${context}/vendor/jquery/jquery.min.js"></script> -->

	<!-- Bootstrap Core JavaScript -->
	<script src="${context}/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${context}/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${context}/dist/js/sb-admin-2.js"></script>

</body>

</html>
