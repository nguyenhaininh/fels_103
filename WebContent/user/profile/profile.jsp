<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
					<li><a href="<s:url value="" />"><i
							class="fa fa-home fa-fw"></i>Trang chủ</a></li>
					<li><a href="<s:url value="/user/searchWord"/>">Tra từ</a></li>
					<li><a href="<s:url value="/user/lesson"/>">Bài học</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->

			<div class="container">
				<h1>
					Hello
					<s:property value="#session.loginId" />
				</h1>

				<hr>
				<!-- left column -->
				<div class="left-bar col-md-4">
					<div class="row">
						<div class="text-center">
							<img src="//placehold.it/100" class="avatar img-circle"
								alt="avatar">
							<h6>change avatar</h6>

							<input class="form-control" type="file">
						</div>
					</div>
				</div>

				<!-- edit form column -->
				<div class="right-bar col-md-4">
					<div class="row">

						<div class="alert alert-info alert-dismissable">
							<a class="panel-close close" data-dismiss="alert">×</a> <i
								class="fa fa-coffee"></i> Your information!!
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Your name</label>
							<div class="col-md-8">
								<input type="name" class="form-control" id="username"
									value="<s:property value="#session.username"/>">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Email</label>
							<div class="col-md-8">
								<input type="email" class="form-control" id="email"
									value="<s:property value="#session.loginId"/>">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Join days</label>
							<div class="col-md-8">
								<input type="joinday" class="form-control" id="create_at"
									value="<s:property value="#session.create_at"/>">
							</div>
						</div>

						<div class="form-group ">
							<label class="col-md-1 control-label"></label>
							<div class="col-md-8 password">
								<a class="pass" href="<s:url value="/user/changePasswordForm"/>">Change
									PassWord</a> <a href="<s:url value="/"/>">Cancle</a>
							</div>
						</div>

					</div>
				</div>

				<div class="right-bar col-md-4">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h3 class="panel-title">Following</h3>
						</div>
						<div class="panel-body">
							<s:iterator value="listUserFollower">
								<a href="showProfile ${userId }" role="button">${username }</a>
								<br>
							</s:iterator>
						</div>
					</div>
				</div>

				<div class="right-bar col-md-4">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">Follower</h3>
						</div>
						<div class="panel-body">
							<s:iterator value="listUserFollowing">
								<a href="showProfile ${userId }" role="button">${username }</a>
								<br>
							</s:iterator>
						</div>
					</div>
				</div>

				<script type="text/javascript"
					src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
				<script type="text/javascript">
					function checkPasswordMatch() {
						var password = $("#password").val();
						var confirmPassword = $("#confirm_password").val();

						if (password != confirmPassword)
							$("#divCheckPasswordMatch").html(
									"Passwords do not match!");
						else
							$("#divCheckPasswordMatch")
									.html("Passwords match.");
					}
				</script>

			</div>
		</div>
	</nav>
</s:if>

<s:else>
	<p>Not found</p>
</s:else>