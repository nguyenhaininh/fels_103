<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- Bootstrap Core JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<s:if test="%{#session.loginId!=null}">

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


			<div class="container">
				<h1>
					Hello
					<s:property value="#session.loginId" />
				</h1>
				<hr>
				<div class="row">
					<!-- left column -->
					<div class="col-md-3">
						<div class="text-center">
							<img src="//placehold.it/100" class="avatar img-circle"
								alt="avatar">
							<h6>Upload a different photo...</h6>

							<input class="form-control" type="file">
						</div>
					</div>

					<!-- edit form column -->
					<div class="col-md-9 personal-info">
						<div class="alert alert-info alert-dismissable">
							<a class="panel-close close" data-dismiss="alert">×</a> <i
								class="fa fa-coffee"></i> Please update! profile for you
						</div>
						<h3>Personal info</h3>
						<form class="form-horizontal" role="form" action="update_profile">
							<div class="form-group">
								<label class="col-lg-3 control-label">Username:</label>
								<div class="col-lg-8">
									<input class="form-control" name="user.username" type="text">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">Email:</label>
								<div class="col-lg-8">
									<input class="form-control" name="user.username" type="text">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Password:</label>
								<div class="col-md-8">
									<input class="form-control" id="password" type="password">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Confirm password:</label>
								<div class="col-md-8">
									<input class="form-control" type="password"
										name="user.password" id="confirm_password"
										onkeyup="checkPasswordMatch();">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-3 control-label" id="divCheckPasswordMatch">
									</br>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label"></label>
								<div class="col-md-8">
									<input class="btn btn-primary" value="Save Changes"
										type="button"> <span></span> <input
										class="btn btn-default" value="Cancel" type="reset">
								</div>
							</div>
						</form>


						<script type="text/javascript"
							src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
						<script type="text/javascript">
							function checkPasswordMatch() {
								var password = $("#password").val();
								var confirmPassword = $("#confirm_password")
										.val();

								if (password != confirmPassword)
									$("#divCheckPasswordMatch").html(
											"Passwords do not match!");
								else
									$("#divCheckPasswordMatch").html(
											"Passwords match.");
							}
						</script>

					</div>
					<!-- end profile -->
				</div>
			</div>
			<hr>
</s:if>
<s:else>
	<p>Not found</p>
</s:else>