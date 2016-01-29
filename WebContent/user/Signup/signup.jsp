<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form class="form-horizontal" method="POST"
				action="/user/signupProcess">
				<div class="form-group">
					<label for="username" class="col-md-3 control-label">Username*</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="username"
							name="user.username" placeholder="Username" required="required"
							pattern=".{6,20}">
					</div>
				</div>
				<br>
				<br>
				<br>
				<div class="form-group">
					<label for="email" class="col-md-3 control-label">Email*</label>
					<div class="col-md-9">
						<input type="email" class="form-control" id="email"
							name="user.email" placeholder="Email" required="required"
							maxlength=40>
					</div>
				</div>
				<br>
				<br>
				<div class="form-group">
					<label for="password" class="col-md-3 control-label">Password*</label>
					<div class="col-md-9">
						<input type="password" class="form-control" id="password"
							name="user.password" placeholder="Password" required="required"
							pattern=".{6,16}">
					</div>
				</div>
				<br>
				<br>
				<div class="form-group">
					<div class="col-sm-offset-2 col-md-9">
						<button type="submit" class="btn btn-primary pull-right">Sign
							up</button>
					</div>
				</div>
			</s:form>