<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:if test="%{#session.loginId!=null}">

	<s:form class="form-horizontal" role="form"
		action="/user/changePassword">

		<div class="form-group">
			<label class="col-md-3 control-label">Username:</label>
			<div class="col-md-8">
				<input class="form-control"  name = "user.username" type="text">
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
				<input class="form-control" type="password" name="user.password"
					id="confirm_password" onkeyup="checkPasswordMatch();">
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
				<input class="btn btn-primary" type="submit"> <span></span>
			</div>
		</div>


		<script type="text/javascript"
			src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script type="text/javascript">
			function checkPasswordMatch() {
				var password = $("#password").val();
				var confirmPassword = $("#confirm_password").val();

				if (password != confirmPassword)
					$("#divCheckPasswordMatch").html("Passwords do not match!");
				else
					$("#divCheckPasswordMatch").html("Passwords match.");
			}
		</script>

	</s:form>
</s:if>