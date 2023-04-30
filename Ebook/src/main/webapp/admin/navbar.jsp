<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: #66bb6a"></div>
<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-info">
			<h3>
				<i class="fas fa-book"></i>EBooks
			</h3>
		</div>
		<div class="col-md-3 ml-sm-auto">
			<c:if test="${not empty userobj }">
				<a href="home.jsp" class="btn btn-success"><i
					class="fas fa-user"></i> ${ userobj.getUserName() }</a>
				<a data-toggle="modal" data-target="#exampleModalCenter"
					class=" btn btn-primary text-white"><i class="fas fa-sign-out-alt"></i>
					Đăng xuất</a>
			</c:if>
			<c:if test="${empty userobj }">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Đăng nhập</a>
				<a href="../register.jsp" class="btn btn-primary"><i
					class="fas fa-user-plus"></i> Đăng kí</a>
			</c:if>

		</div>
	</div>
</div>

<!-- bắt đầu logout modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle"></h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			<h4 class="text-center">Bạn có muốn đăng xuất</h4>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
				<a href="../logout" type="button" class="btn btn-primary text-white">Đồng ý</a>
			</div>
		</div>
	</div>
</div>
<!-- kết thúc logout modal -->

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="home.jsp"><i class="fas fa-home"></i>
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Trang
					chủ <span class="sr-only">(current)</span>
			</a></li>
		</ul>
	</div>
</nav>