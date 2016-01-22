<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		//Handles menu drop down
		$('.dropdown-menu').find('form').click(function(e) {
			e.stopPropagation();
		});
	});
</script>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top topnav"
	role="navigation">
	<div class="container topnav">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand topnav" href="#"><img
				class="img-responsive" src="/img/logo.png" alt=""></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><i class="fa fa-home fa-fw"></i>Trang chủ</a></li>
				<li><a href="<s:url value="searchWord"/>">Tra từ</a></li>
				<li><a href="user/lesson">Bài học</a></li>
				<li><a href="#contact">Liên hệ</a></li>
				<s:if test="%{#session.loginId==null}">
					<!-- signup -->
					<li><a href="<s:url value="/user/signup"/>"
						class="dropdown-toggle" data-toggle="dropdown">Đăng ký<b
							class="caret"></b>
					</a>
						<ul class="dropdown-menu" style="padding: 15px; min-width: 250px;">
							<li>
								<div class="row">
									<div class="col-md-12">
										<form class="form" role="form" method="post"
											action="user/signup" accept-charset="UTF-8" id="login-nav">
											<div class="form-group">
												<label class="sr-only" for="exampleInputEmail2">Email
													address</label> <input name="user.email" type="email"
													class="form-control" id="exampleInputEmail2"
													placeholder="Email address" required>
											</div>
											<div class="form-group">
												<label class="sr-only">Username</label> <input
													name="user.username" class="form-control"
													id="exampleInputEmail2" placeholder="Username" required>
											</div>
											<div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">Password</label>
												<input name="user.password" type="password"
													class="form-control" id="exampleInputPassword2"
													placeholder="Password" required>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-success btn-block">Sign
													up</button>
											</div>
										</form>
									</div>
								</div>
							</li>
						</ul></li>

					<!-- signup finish -->
					<!-- login -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Đăng nhập<b class="caret"></b></a>
						<ul class="dropdown-menu" style="padding: 15px; min-width: 250px;">
							<li>
								<div class="row">
									<div class="col-md-12">
										<s:form class="form" role="form" method="post"
											action="user/checkLogin" accept-charset="UTF-8"
											id="login-nav">
											<div class="form-group">
												<label class="sr-only" for="exampleInputEmail2">Email
													address</label> <input name="user.email" type="email"
													class="form-control" id="exampleInputEmail2"
													placeholder="Email address" required>
											</div>
											<div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">Password</label>
												<input name="user.password" type="password"
													class="form-control" id="exampleInputPassword2"
													placeholder="Password" required>
											</div>
											<div class="checkbox">
												<label> <input type="checkbox"> Remember me
												</label>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-success btn-block">Sign
													in</button>
											</div>
										</s:form>
									</div>
								</div>
							</li>
						</ul></li>
					<!-- Login finish -->
				</s:if>
				<s:else>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">Hello!!
							<s:property value="%{#session.loginId}" />
					</a>
						<ul class="dropdown-menu" style="padding: 5px; min-width: 150px;">
							<li><a href="user/logout" class="list-group-item">Đăng
									xuất</a></li>
							<li><a href="" class="list-group-item">Profile</a></li>
						</ul></li>
				</s:else>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>


<!-- Header -->
<a name="about"></a>
<div class="intro-header">
	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<div class="intro-message">
					<h1>日本語を学ぶ</h1>
					<h3>Welcome to My E-Learning</h3>
					<hr class="intro-divider">
					<ul class="list-inline intro-social-buttons">
						<li><a href="https://www.facebook.com/vantoan.nguyen.9"
							class="btn btn-default btn-lg"><i
								class="fa  fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
						</li>
						<li><a href="https://plus.google.com/"
							class="btn btn-default btn-lg"><i class="fa fa-google fa-fw"></i>
								<span class="network-name">Google+</span></a></li>
						<li><a href="http://www.skype.com/en/"
							class="btn btn-default btn-lg"><i class="fa fa-skype fa-fw"></i>
								<span class="network-name">Skype</span></a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
	<!-- /.container -->

</div>
<!-- /.intro-header -->
<!-- Page Content -->
<!-- Start lession -->

<div class="content-section-a">

		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">Lesson 1: Tiếng Nhật không khó</h2>
					<p class="lead">
						Chỉ còn hơn 2 tháng nữa là các bạn đã bắt đầu một hành trình mới,
						đầy gian nan thử thách và hứa hẹn rất nhiều thành công trong tương
						lai. <a class="btn btn-default" href="#" role="button">Bắt đầu
							ngay</a>
					</p>
				</div>
				<div class="col-lg-5 col-lg-offset-2 col-sm-6">
					<img class="img-responsive" src="../img/japan.jpg" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-a -->

	<div class="content-section-b">

		<div class="container">

			<div class="row">
				<div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">Lesson 2: Bắt đầu với Minnano
						Nihongo</h2>
					<p class="lead">
						Chỉ còn hơn 2 tháng nữa là các bạn đã bắt đầu một hành trình mới,
						đầy gian nan thử thách và hứa hẹn rất nhiều thành công trong tương
						lai. <a class="btn btn-default" href="#" role="button">Bắt đầu
							ngay</a>
					</p>
				</div>
				<div class="col-lg-5 col-sm-pull-6  col-sm-6">
					<img class="img-responsive" src="../img/minna-no.jpg" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-b -->

	<div class="content-section-a">

		<div class="container">

			<div class="row">
				<div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">Lesson 3: Các lễ hội Nhật Bản</h2>
					<p class="lead">
						Chỉ còn hơn 2 tháng nữa là các bạn đã bắt đầu một hành trình mới,
						đầy gian nan thử thách và hứa hẹn rất nhiều thành công trong tương
						lai. <a class="btn btn-default" href="#" role="button">Bắt đầu
							ngay</a>
					</p>
				</div>
				<div class="col-lg-5 col-lg-offset-2 col-sm-6">
					<img class="img-responsive" src="../img/matsuri.jpg" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-a -->

<div class="content-section">

	<s:if test="lesson.size()>0">
		<s:iterator value="lesson" status="lessonStatus">
			<div class="container">

				<div class="row">
					<div class="col-lg-5  col-sm-6">
						<hr class="section-heading-spacer">
						<div class="clearfix"></div>
						<h2 class="section-heading">
							<s:property value="name" />
						</h2>
						<p class="lead">
							<s:property value="descript" />
							<a class="btn btn-default"
								href="<s:url value="/courses/detail"/>" role="button">Bắt
								đầu ngay</a>
						</p>
						<div class="col-lg-5 col-lg-offset-2 col-sm-6">
							<img src="<s:property value="image" />" alt="Image " />
						</div>
					</div>
				</div>
			</div>
		</s:iterator>
	</s:if>
	<s:else>

	</s:else>
</div>
<!-- Finish lesson -->

<a name="contact"></a>
<div class="banner">

	<div class="container">

		<div class="row">
			<div class="col-lg-6">
				<h2>Liên hệ với chúng tôi:</h2>
			</div>
			<div class="col-lg-6">
				<ul class="list-inline banner-social-buttons">
					<li><a href="https://www.facebook.com/vantoan.nguyen.9"
						class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i>
							<span class="network-name">Facebook</span></a></li>
					<li><a href="https://plus.google.com/"
						class="btn btn-default btn-lg"><i class="fa fa-google fa-fw"></i>
							<span class="network-name">Google+</span></a></li>
					<li><a href="skype.com/" class="btn btn-default btn-lg"><i
							class="fa fa-skype fa-fw"></i> <span class="network-name">Skype</span></a>
					</li>
				</ul>
			</div>
		</div>

	</div>
	<!-- /.container -->

</div>
<!-- /.banner -->