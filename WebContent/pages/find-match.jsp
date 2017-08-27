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

<title>Find Match</title>

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
						<h1 class="page-header">Tìm kiếm</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<form role="form" lpformnum="1">

							<div clas="col-lg-6">

								<div class="panel-heading">Tiêu chí tìm kiếm</div>
								<div class="col-lg-12">
									<div class="form-group ">
										<label>Ngày thi đấu</label> <input class="form-control">
										<p class="help-block"></p>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<label>Đội Bóng 1</label> <select class="form-control">
										<option>Việt Nam</option>
										<option>Thái lan</option>
										<option>Brunei</option>
										<option>Malaysia</option>
									</select>
								</div>


								<button type="submit" class="btn btn-primary">Tìm kiếm</button>
								<button type="reset" class="btn btn-default">Làm lại</button>

							</div>
							<div class="col-lg-6">

								<div class="form-group">
									<label>Đội Bóng 2</label> <select class="form-control">
										<option></option>
										<option>Việt Nam</option>
										<option>Thái lan</option>
										<option>Brunei</option>
										<option>Malaysia</option>
									</select>
								</div>


							</div>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Kết quả tìm kiếm</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<div class="row">
					<div class="col-lg-12">
						<table width="100%"
							class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
							id="dataTables-example" role="grid"
							aria-describedby="dataTables-example_info" style="width: 100%;">
							<thead>
								<tr role="row">
									<th class="sorting_desc" tabindex="0"
										aria-controls="dataTables-example" rowspan="1" colspan="1"
										aria-label="Rendering engine: activate to sort column ascending"
										style="width: 170px;" aria-sort="descending">Trận</th>
									<th class="sorting" tabindex="0"
										aria-controls="dataTables-example" rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending"
										style="width: 206px;">Đội 1</th>
									<th class="sorting" tabindex="0"
										aria-controls="dataTables-example" rowspan="1" colspan="1"
										aria-label="Platform(s): activate to sort column ascending"
										style="width: 189px;">Đội 2</th>
									<th class="sorting" tabindex="0"
										aria-controls="dataTables-example" rowspan="1" colspan="1"
										aria-label="Platform(s): activate to sort column ascending"
										style="width: 50px;">Tỉ lệ chấp</th>
									<th class="sorting" tabindex="0"
										aria-controls="dataTables-example" rowspan="1" colspan="1"
										aria-label="Platform(s): activate to sort column ascending"
										style="width: 50px;"></th>
								</tr>
							</thead>
							<tbody>
								<tr class="gradeA odd" role="row">
									<td class="sorting_1">1</td>
									<td>Albania <img alt=""
										src="${context}/img/if_Albania.png"> 
									</td>
									<td>Brunei <img alt=""
										src="${context}/img/if_Brunei_flat.png"></td>
									<td>3</td>
									<td><a href="vote-match.jsp">Cược</a></td>
								</tr>
								<tr class="gradeA odd" role="row">
									<td class="sorting_1">2 </td>
									<td>Viet Nam <img alt=""
										src="${context}/img/if_Vietnam_flat.png"></td>
									<td>Thai Lan <img alt=""
										src="${context}/img/if_Thailand.png"></td>
									<td>2</td>
									<td><a href="vote-match.jsp">Cược</a></td>
								</tr>
								<tr class="gradeA odd" role="row">
									<td class="sorting_1">3</td>
									<td>Thai Land <img alt=""
										src="${context}/img/if_Thailand.png"></td>
									<td>Alabania <img alt=""
										src="${context}/img/if_Albania.png">
									</td>
									<td>-2</td>
									<td><a href="vote-match.jsp">Cược</a></td>
								</tr>
								<tr class="gradeA odd" role="row">
									<td class="sorting_1">4</td>
									<td>Brunei <img alt=""
										src="${context}/img/if_Brunei_flat.png"></td>
									<td>Viet Nam   <img alt=""
										src="${context}/img/if_Vietnam_flat.png"></td>
									<td>2</td>
									<td><a href="vote-match.jsp">Cược</a></td>
								</tr>
							</tbody>
						</table>
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
