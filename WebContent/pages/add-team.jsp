<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Add New Team</title>

<!-- Bootstrap Core CSS -->
<link href="${context}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${context}/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${context}/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="${context}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
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
						<h1 class="page-header">Thêm Đội Bóng</h1>
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
									<div class="col-lg-6">
										<form role="form" lpformnum="1">
											<div class="form-group">
												<label>Mã Đội Bóng</label> <input required="required"
													class="form-control" name="teamCode">
												<p class="help-block">Mã duy nhất, gồm 3 ký tự , không
													được trùng với các mã đã tồn tại.</p>
											</div>
											<div class="form-group">
												<label>Tên Đội Bóng</label> <input class="form-control"
													placeholder="Tên đội" name="teamName">
											</div>
											<div class="form-group">
												<label>Hình đại diện (URL)</label> <input type="text"
													class="form-control" name="imageUrl">
											</div>
											<div class="form-group">
												<label>Mô tả </label>
												<textarea class="form-control" rows="3"
													name="teamDescription"></textarea>
											</div>

											<div class="form-group">
												<label>Active</label>
												<div class="radio">
													<label> <input type="radio" name="teamStatus"
														id="optionsRadios1" value="active" checked="">Hoạt
														động
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="teamStatus"
														id="optionsRadios2" value="inactive">Không hoạt
														động
													</label>
												</div>
											</div>
											<button type="submit" class="btn btn-default">Thêm</button>
											<button type="reset" class="btn btn-default">Làm lại</button>
										</form>
									</div>
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
	<script src="${context}/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${context}/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${context}/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${context}/dist/js/sb-admin-2.js"></script>

</body>

</html>
