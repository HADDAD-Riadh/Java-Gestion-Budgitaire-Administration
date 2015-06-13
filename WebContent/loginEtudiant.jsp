<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Aboratoire ENIT</title>
<link rel="shortcut icon" href="images/sanitaire.gif" />
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/image_slide.js"></script>

<!-- validation  -->
<link rel="stylesheet" href="validation/demos-header.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="validation/demo-errors.css" type="text/css"
	media="all" />
<script src="validation/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="validation/jquery.form-validation-and-hints.js"
	type="text/javascript"></script>
<!-- validation  -->
</head>
<body>
	<div id="main">
		<div id="menubar">
			<ul id="menu">
				<li><a href="loginAdministrateur.jsp">Espace Administrateur</a></li>
				<li class="current"><a href="loginEtudiant.jsp">Espace
						Etudiant Chercheur</a></li>
				
				

			</ul>
		</div>
		<!--close menubar-->
		<br />
	</div>
	<br />
	<br />
	<center>
		<fieldset id="myFieldset">
			<form method="post" action="/enit/LoginEtudiant" class="login">
				<div class="field required">
					<p>
						<label for="login">Login:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<input type="text" name="login" id="login" value=""></input>
					</p>

					<p>
						<label for="password">Password:</label> <input type="password"
							name="password" id="password" value=""></input>
					</p>

					<p class="login-submit">
						<button type="submit" class="login-button">Login</button>

					</p>
				</div>
				<p class="forgot-password">
					<a href="index.html">Forgot your password?</a>
				</p>
				<center>
					<img id="imgcadna" src="images/cadnaa.jpg" />
				</center>
			</form>


			<br /> <br />
		</fieldset>
	</center>
	<br />
	<br />
	<br />
	<br />
	<br />

	<div id="menubar2">
		<ul id="menu">

		</ul>
	</div>

</body>
</html>