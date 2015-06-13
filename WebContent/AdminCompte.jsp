<%@page import="com.web.server.ibatis.model.Administrateur"%>
<%@page import="com.web.server.ibatis.daoImpl.AdministrateurDAOImpl"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
	
	<%@page import="com.context.config.MyContext"%>
	
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
			<%  Object id=request.getAttribute("idadmin");
			
			System.out.println(request.getAttribute("idadmin"));
			
			
			System.out.println(request.getAttribute("nomadmin"));
			Object nom=request.getAttribute("nomadmin");
			System.out.println(request.getAttribute("prenomadmin"));
			Object prenom=request.getAttribute("prenomadmin");
			if(request.getAttribute("idadmin")==null){
				id=request.getParameter("idadmin");
				
				
			}
			if(request.getAttribute("nomadmin")==null){
				nom=request.getParameter("nomadmin");
				
				
			}
			if(request.getAttribute("prenomadmin")==null){
				prenom=request.getParameter("prenomadmin");
				
				
			}
		
			
			
			
			%>
				<li ><a href="EspaceAdmin.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Rubriques</a></li>
				<li><a href="AdminReception.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Demandes et receptions</a></li>
			<li class="current"><a href="AdminCompte.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Compte et Configurations</a></li>
			

			</ul>
		
				<font color="white">Bienvenue !! </font><font dir="ltr"
				color="orange">&nbsp;<%=nom %>&nbsp;<%=prenom%></font>
		</div>
		<!--close menubar-->
		<br />

		<div id="site_content">
			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_item">
						<h2>New Website</h2>


						<p>REPUBLIC OF TUNISIA - Ministry of Higher Education Scientific Research and Technology.
REPUBLIQUE TUNISIENNE - Ministère de l’Enseignement Supérieur de la Recherche Scientifique et de la Technologie..</p>
					</div>
					<!--close sidebar_item-->
				</div>
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
					<h1><font color="#0043A8">Modification Compte </font></h1>
					
					
					<%
					
					 
					AdministrateurDAOImpl distri = (AdministrateurDAOImpl) MyContext.WebAppContext.getBean("AdministrateurDAOImpl");
					//Patients p=distri.selectByPrimaryKey(Integer.parseInt(request.getParameter("idPatient")));
					Administrateur p=distri.selectByPrimaryKey(Integer.parseInt(id.toString()));
					
					
					
					%>

<form  action="/enit/updateAdministrateur" method="post">
<fieldset style="border-radius:12px;-moz-box-shadow: 0px 0px 8px 7px #656565;
	-webkit-box-shadow: 0px 0px 8px 7px #656565;
	box-shadow: 0px 0px 8px 7px #656565;">
<br/>
     <div class="field required">
			        
				<label  class="lab" for="username"> Id  :<font color="red">*</font></label> <input class="text verifyText" readonly="readonly"  type="text"  value="<%=p.getId_admin()%>" name="idadmin"/>
				<span class="iferror">* Champ Obligatoire</span>
				</div>
				<br/>

			
			<br/>
			<div class="field required">
			        
				<label class="lab"for="username"> Nom :<font color="red">*</font></label> <input class="text verifyText" readonly="readonly" type="text" id="nom" value="<%=p.getNom()%>" name="nom"/>
				<span class="iferror">* Champ Obligatoire</span>
</div>
			
			<br/><br/>
			<div class="field required">
				<label class="lab" for="username">Prénom :<font color="red">*</font></label> <input class="text verifyText"  readonly="readonly"type="text" id="prenom" value="<%=p.getPrenom()%>" name="prenom"/>
<span class="iferror">* Champ Obligatoire</span>
			</div>
			<br/><br/>
			
			<div class="field required">
				<label class="lab" for="username">Login :<font color="red">*</font></label> <input class="text verifyText" type="text" id="login" value="<%=p.getLogin() %>" name="login"/>
<span class="iferror">* Champ Obligatoire</span>
			</div>
			<br/><br/>
			<div class="field required">
				<font color="white">Mot de passe:</font><font color="red">*</font> <input class="text verifyText" type="text" id="password"  value="<%=p.getPassword() %>"name="password"/>
<span class="iferror">* Champ Obligatoire</span>
			</div>
			<br/><br/>
			
			&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<button  type="submit" class="modif" >Modifier</button>
			
			&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<button type="button" class="modif" onclick="history.back()"  >Retour</button>
		<br/>
		<br/>
		<br/>
		<br/>
		
		
		

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
