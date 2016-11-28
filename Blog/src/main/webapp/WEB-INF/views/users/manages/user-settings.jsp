<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
	pageEncoding="ISO-8859-9"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Kullan�c� Ayarlar�</title>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<!-- Main Content -->
	<div class="container-fluid">
		<div class="side-body">
			<h1>Kullan�c� Ayarlar�</h1>
			<hr>
			<div class="row">
				<!-- accordion tablist -->
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<!-- update user password -->
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne"> 
									�ifre G�ncelle 
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<form:form action="#" onsubmit="UpdatePassword(); return false;" method="post">
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-4 col-md-offset-4">
												<span id="updatePasswordResult" class="errorValidation" style="color:green;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-2 col-md-offset-2">
												<label for="username" >Eski �ifre: </label>
											</div>
											<div class="col-xs-12 col-md-4">
												<input type="password" class="form-control" id="oldPassword"
													placeholder="Eski �ifre" required="required">
											</div>
											<div class="col-xs-12 col-md-4">
												<span id="errorOldPassword" class="errorValidation" style="color:red;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-2 col-md-offset-2">
												<label for="username">Yeni �ifre:</label>
											</div>
											<div class="col-xs-12 col-md-4">
												<input type="password" class="form-control" id="newPassword"
													placeholder="Yeni �ifre" required="required">
											</div>
											<div class="col-xs-12 col-md-4">
												<span id="errorNewPassword" class="errorValidation" style="color:red;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-2 col-md-offset-2">
												<label for="username">Yeni �ifre tekrar�:</label>
											</div>
											<div class="col-xs-12 col-md-4">
												<input type="password" class="form-control" id="newConfirmPassword"
													placeholder="Yeni �ifre tekrar�" required="required">
											</div>
											<div class="col-xs-12 col-md-4">
												<span id="errorNewConfirmPassword" class="errorValidation" style="color:red;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-6 col-md-2 col-md-offset-6">
												<input type="submit" class="form-control btn-success"
													value="Kaydet" id="btnSubmitUserPassword">
											</div>
										</div>
									</div>
									<br>
									<sec:csrfInput />
								</form:form>
							</div>
						</div>
					</div><!-- end update user password -->
					<!-- update user info -->
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">
									Kullan�c� Bigilerini G�ncelleme
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								<form:form action="#" onsubmit="UpdateUserInformation(); return false;" method="post">
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-4 col-md-offset-4">
												<span id="updateUserInformationResult" class="errorValidation" style="color:green;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-2 col-md-offset-2">
												<label for="username">Kullan�c� Ad�: </label>
											</div>
											<div class="col-xs-12 col-md-4">
												<input type="text" class="form-control" id="userName" value="${userName}" disabled
													placeholder="Kullan�c� Ad�" required="required">
											</div>
											<div class="col-xs-12 col-md-4">
												<span id="errorUserName" class="errorValidation" style="color:red;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-2 col-md-offset-2">
												<label for="username">Ad�: </label>
											</div>
											<div class="col-xs-12 col-md-4">
												<input type="text" class="form-control" id="firstName" value="${firstName}"
													placeholder="Ad�" required="required">
											</div>
											<div class="col-xs-12 col-md-4">
												<span id="errorFirstName" class="errorValidation" style="color:red;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-2 col-md-offset-2">
												<label for="username">Soyad�: </label>
											</div>
											<div class="col-xs-12 col-md-4">
												<input type="text" class="form-control" id="lastName" value="${lastName}"
													placeholder="Soyad�" required="required">
											</div>
											<div class="col-xs-12 col-md-4">
												<span id="errorLastName" class="errorValidation" style="color:red;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-2 col-md-offset-2">
												<label for="username">Email:</label>
											</div>
											<div class="col-xs-12 col-md-4">
												<input type="email" class="form-control" id="email" value="${email}"
													placeholder="Email" required="required">
											</div>
											<div class="col-xs-12 col-md-4">
												<span id="errorEmail" class="errorValidation" style="color:red;"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-6 col-md-2 col-md-offset-6">
												<input type="submit" class="form-control btn-success"
													value="Kaydet" id="btnSubmitUserInformation" disabled="disabled">
											</div>
										</div>
									</div>
									<br>
									<sec:csrfInput />
								</form:form>
						     </div>
						</div>
					</div><!-- end update user info -->
					<!-- Other settings -->
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									Di�er Ayarlar 
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								<h1> Burada Di�er ayarlar yer alacak...</h1>
							</div>
						</div>
					</div><!-- end Other settings -->
				</div><!-- end accordion tablist -->
			</div>
		</div>
	</div>
</body>
</html>
