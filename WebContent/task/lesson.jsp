<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top topnav"
	role="navigation">
	
	<div class="container topnav">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand topnav" href="#"><img
				class="img-responsive" src="img/logo.png" alt=""></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="../index.jsp"><i class="fa fa-home fa-fw"></i>Trang
						chủ</a></li>
				<li><a href="<s:url value="/user/searchWord"/>">Tra từ</a></li>
				<li><a href="<s:url value="/user/lesson"/>">Bài học</a></li>
		</div>
		<!-- /.navbar-collapse -->
		
		<s:if test="%{#session.loginId!=null}">
			<div class="list-group">
				<a href="#" class="list-group-item active"> Các bài đã học </a>
				<s:iterator value="lesson">
					<a href="#" class="list-group-item list-group-item-danger"><s:property
							value="name" /><span
						class="label label-default label-pill pull-xs-right">  10/20</span></a>
				</s:iterator>
			</div>
		</s:if>
		<div class="list-group">
			<a href="#" class="list-group-item active"> Bài mới </a>
			<s:iterator value="lesson">
				<a href="#" class="list-group-item list-group-item-info"><s:property
						value="name" /><span
					class="label label-default label-pill pull-xs-right">14</span></a>
			</s:iterator>
		</div>