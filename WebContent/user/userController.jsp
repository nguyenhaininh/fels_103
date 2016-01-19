<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>E-Learning</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/landing-page.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<script>
	$(document).ready(function() {
		//Handles menu drop down
		$('.dropdown-menu').find('form').click(function(e) {
			e.stopPropagation();
		});
	});
</script>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top topnav"
		role="navigation">
		<div class="container topnav">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand topnav" href="#"><img
					class="img-responsive" src="../img/logo.png" alt=""></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about"><i class="fa fa-home fa-fw"></i>Trang
							chủ</a></li>
					<li><a href="<s:url value="/user/searchWord"/>">Tra từ</a></li>
					<li><a href="#services">Bài học</a></li>
					<li><a href="#">Hello <s:property
								value="session.get('loginId')" /></a></li>
					<li><a href="../index.jsp" />Đăng suất</a></li>
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

	<a name="services"></a>
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
							class="btn btn-default btn-lg"><i
								class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a></li>
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

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="list-inline">
						<li><a href="#">Trang chủ</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="#about">Giới thiệu</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="#services">Tra từ</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="#contact">Liên hệ</a></li>
					</ul>
					<p class="copyright text-muted small">Copyright &copy; ToanNV
						2015. All Rights Reserved</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
</body>

</html>
