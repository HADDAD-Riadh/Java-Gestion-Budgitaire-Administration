
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="com.web.server.ibatis.model.Etudiant"%>
<%@page import="com.web.server.ibatis.daoImpl.EtudiantDAOImpl"%>
<%@page import="com.context.config.MyContext"%>
<%@page language="java" import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>ENIT</title>
<link rel="shortcut icon" href="images/sanitaire.gif" />
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
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
				<%
					Object id = request.getAttribute("idetudiant");

					System.out.println("°°°°°°°°°°°°"+request.getAttribute("idetudiant"));

					
					Object nom = request.getAttribute("nometudiant");
					System.out.println("°°°°°°°°°°°°"+request.getAttribute("nometudiant"));
					System.out.println(request.getAttribute("prenometudiant"));
					Object prenom = request.getAttribute("prenometudiant");
					if (request.getAttribute("idetudiant") == null) {
						id = request.getParameter("idetudiant");

					}
					if (request.getAttribute("nometudiant") == null) {
						nom = request.getParameter("nometudiant");

					}
					if (request.getAttribute("prenometudiant") == null) {
						prenom = request.getParameter("prenometudiant");

					}
				%>
				 <li ><a
					href="BoiteReceptionEtudiant.jsp?idetudiant=<%=id%>&nometudiant=<%=nom%>&prenometudiant=<%=prenom%>">Boite De reception</a></li>
<li class="current"><a
					href="EnvoiDemande.jsp?idetudiant=<%=id%>&nometudiant=<%=nom%>&prenometudiant=<%=prenom%>">Demande</a></li>
				<li ><a
					href="EtudiantCompte.jsp?idetudiant=<%=id%>&nometudiant=<%=nom%>&prenometudiant=<%=prenom%>">paramétre de compte</a></li>
			
 
			</ul>
			<%--  <font color="white">Bienvenue !! </font><font dir="ltr" color="orange">&nbsp;<%=StaticData.Nom.toUpperCase() %>&nbsp;<%=StaticData.Prenom %></font> --%>
			<font color="white">Bienvenue !! </font><font dir="ltr"
				color="orange">&nbsp;<%=nom%>&nbsp;<%=prenom%></font>
		</div>
		<!--close menubar-->
		<br />

		<div id="site_content">
			<div class="sidebar_container">
				
				<!--close sidebar-->
				<div class="sidebar">
					<div class="sidebar_item">
						
						<h2>Indication...</h2>
						<h3>ENIT</h3>
						<p>L'ENIT a construit son identité au fil des années pour devenir pôle de compétences Formation - Recherche - Valorisation.

Elle a développé son savoir-faire dans le
 domaine du recheche  pour 
 assurer une formation couvrant un champ d'activités 
 dans lequel nos étudiants peuvent trouver une réponse à leurs attentes
 et pour satisfaire aux besoins industriels dans 
 le cadre de leur recherche et développement.. </p>
					</div>
					<!--close sidebar_item-->
				</div>
				<!--close sidebar-->

				<!--close sidebar-->
				<div class="sidebar">
					<div class="sidebar_item">
						<h2>Contact</h2>
						<p>Telephone: +216 71 654 987</p>
					<p>
						Email: <a href="#">www.enit.rnu.tn </a>
					</p>
					</div>
					<!--close sidebar_item-->
				</div>
				<!--close sidebar-->
			</div>
			<!--close sidebar_container-->



			<div id="content">
				<div class="content_item">
					<h1>
						<font color="#0043A8">Ecrire Demande </font>
					</h1>
					<br/>
					<br/>
					


<%
EtudiantDAOImpl vdo = (EtudiantDAOImpl) MyContext.WebAppContext
.getBean("EtudiantDAOImpl");
Etudiant listemed = vdo.selectByPrimaryKey(Integer.parseInt(id.toString()));


%>

					<form action="/enit/ecrireDemande" method="post">
						<fieldset style="border-radius:12px;-moz-box-shadow: 0px 0px 8px 7px #656565;
	-webkit-box-shadow: 0px 0px 8px 7px #656565;
	box-shadow: 0px 0px 8px 7px #656565;">
							<br />
							<div class="field required">

								<label class="lab" for="username"> Mon Id  :<font
									color="red">*</font></label> <input class="text verifyText"
									value="<%=listemed.getIdEtudiant() %>"
									readonly="readonly" type="text"
									 name="id" />
								<span class="iferror">* Champ Obligatoire</span>
							</div>
							<br /> <br />
							<div class="field required">

								<label class="lab" for="username"> Nom :<font
									color="red">*</font></label> <input class="text verifyText"
									readonly="readonly" type="text" value="<%=listemed.getNom() %>"
									 name="nom" />
								<span class="iferror">* Champ Obligatoire</span>
							</div>
							<br /> <br />
							
							
								<div class="field required">

								<label class="lab" for="username"> Prénom :<font
									color="red">*</font></label> <input class="text verifyText"
									readonly="readonly" type="text"
									 name="prenom" value="<%=listemed.getPrenom() %>" />
								<span class="iferror">* Champ Obligatoire</span>
							</div>
							<br /> <br />
							<div class="field required">
								<label class="lab" for="username"> CIN  :<font
									color="red">*</font></label> <input class="text verifyText"
									readonly="readonly" type="text" value="<%=listemed.getCin()%>"
									 name="cin" />
								<span class="iferror">* Champ Obligatoire</span>
							</div>
							<br /> <br />


							<div class="field required">
								<label class="lab" for="username">Specialité :<font
									color="red">*</font></label> <input class="text verifyText" 
									
									value="<%=listemed.getSpacialite() %>"
									
									type="text"
									name="spacialite" /> <span class="iferror">* Champ
									Obligatoire</span>
							</div>
							<br /> <br />





							<div class="field required">
								<label class="lab" for="username">Date debut :<font
									color="red">*</font></label> <input class="text verifyText" type="text"
									name="debut" /> <span class="iferror">* Champ
									Obligatoire</span>
							</div>
							<br /> <br />




							<div class="field required">
								<label class="lab" for="username">Date Fin :<font
									color="red">*</font></label> <input class="text verifyText" type="text"
									name="fin" /> <span class="iferror">* Champ
									Obligatoire</span>
							</div>
							<br /> <br />


							<div class="field required">
								<label class="lab" for="username">Lieu  :<font
									color="red">*</font></label> <input class="text verifyText" type="text"
									name="lieu" /> <span class="iferror">* Champ
									Obligatoire</span>
							</div>
							<br /> <br />
							<div class="field required">
								<label class="lab" for="username">Montant  :<font
									color="red">*</font></label> <input class="text verifyText" type="text"
									name="montant" /> <span class="iferror">* Champ
									Obligatoire</span>
							</div>
							<br /> <br />
							<div class="field required">
								<label class="lab" for="username">Dépense  :<font
									color="red">*</font></label> <input class="text verifyText" type="text"
									name="depense" /> <span class="iferror">* Champ
									Obligatoire</span>
							</div>
							<br /> <br />


							<div class="field required">
								<label class="lab" for="username">Charges  :<font
									color="red">*</font></label> <select name="charge" style="height: 30px;width: 190px;border-width: 2px;border-color: red ">

									<option label="hébergement" value="hébergement"></option>
									<option label="transport" value="transport"></option>
									<option label="Timbre fiscale" value="Timbre fiscale"></option>
									<option label="Inscription" value="Inscription"></option>

								</select> <span class="iferror">* Champ Obligatoire</span>
							</div>
							<br /> <br />

							<div class="field required">
								<label class="lab" for="username">Sujet :<font
									color="red">*</font></label> <input class="text verifyText" type="text"
									
									
									style="height:90px;"
									name="sujet" /> <span class="iferror">* Champ
									Obligatoire</span>
							</div>
							<br /> <br />
						


							<br />
							<br /> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp; &nbsp;
							<button type="submit" class="modif">Valider</button>

							&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
							<button type="button" class="modif" onclick="history.back()">Retour</button>
							<br /> <br /> <br /> <br />




						</fieldset>

					</form>




					<!--close button_small-->

				</div>
				<!--close content_container-->

			</div>
			<!--close content_item-->

		</div>
		<!--close content-->
	</div>
	<!--close site_content-->

	<div id="menubar2">
		<ul id="menu">

		</ul>
	</div>







	<!--close main-->



	<!--close footer-->

</body>
</html>
