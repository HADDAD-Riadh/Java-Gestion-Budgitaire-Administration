
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>

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
				<li class="current"><a href="AdminReception.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Demandes et receptions</a></li>
			<li><a href="AdminCompte.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Compte et Configurations</a></li>
			

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
REPUBLIQUE TUNISIENNE - Ministère de l’Enseignement Supérieur de la Recherche Scientifique et de la Technologie.</p>
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
 le cadre de leur recherche et développement.
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
					<h1><font color="#0043A8">Gérer Demande</font></h1>
					
				

<form  action="/enit/AccepterDemande" method="post">
<fieldset style="border-radius:12px;">
<br/>

   <div class="field required">
			        
				<label  class="lab" >Mon Id:<font color="red">*</font></label> <input class="text verifyText" readonly="readonly"  type="text"  value="<%=request.getParameter("id")%>" name="id"/>
				<span class="iferror">* Champ Obligatoire</span>
				</div>
				<br/>

			
			<br/>
     <div class="field required">
			        
				<label  class="lab" >N° Demande:<font color="red">*</font></label> <input class="text verifyText" readonly="readonly"  type="text"  value="<%=request.getParameter("iddemande")%>" name="iddemande"/>
				<span class="iferror">* Champ Obligatoire</span>
				</div>
				<br/>

			
			<br/>
			<div class="field required">
			        
				<label class="lab"> Nom :<font color="red">*</font></label> <input class="text verifyText" readonly="readonly" type="text"  value="<%=request.getParameter("nom")%>" name="nom"/>
				<span class="iferror">* Champ Obligatoire</span>
</div>
			
			<br/><br/>
			<div class="field required">
				<label class="lab" >Prénom :<font color="red">*</font></label> <input class="text verifyText"  readonly="readonly"type="text"  value="<%=request.getParameter("prenom")%>" name="prenom"/>
<span class="iferror">* Champ Obligatoire</span>
			</div>
			<br/><br/>
			
			<div class="field required">
				<label class="lab" >Sujet :<font color="red">*</font></label> <input class="text verifyText" type="text"  value="<%=request.getParameter("sujet")%>" name="sujet" style="height:40px;"/>
<span class="iferror">* Champ Obligatoire</span>
			</div>
			<br/><br/>
			
			<div class="field required">
				<label  class="lab" ><font color="white">Lieu:</font><font color="red">*</font> </label><input class="text verifyText" type="text"   value="<%=request.getParameter("lieu")%>"name="lieu"/>
<span class="iferror">* Champ Obligatoire</span>
			</div>
			<br/><br/>
			
			
				<div class="field required">
				<label  class="lab" ><font color="white">Montant:</font><font color="red">*</font> </label><input class="text verifyText" type="text"   value="<%=request.getParameter("montant")%>"name="montant"/>
<span class="iferror">* Champ Obligatoire</span>
			</div>
			<br/><br/>
			
			
			<div class="field required">
				<label  class="lab" >Debut le:<font color="red">*</font></label> <input class="text verifyText" type="text"  value="<%=request.getParameter("debut")%>" name="debut"/>
<span class="iferror">* Num Mobile incorrect</span>
			</div>
			<br/><br/>
			<div class="field required">
				<label  class="lab" >Fin le:<font color="red">*</font></label> <input class="text verifyText" type="text"  value="<%=request.getParameter("fin")%>" name="fin"/>
<span class="iferror">* Num Mobile incorrect</span>
			</div>
			
			<br/><br/>
			<div class="field required">
				<label class="lab" >Accepte :<font color="red">*</font></label> 
				<select name="accepte" style="height: 36px;border-radius:3px;width:80px;background-color:#1D1D1D;color: white;" >
				<option title="oui" label="oui" value="oui"></option>
				<option title="nom" label="non" value="non"></option>
				</select>
			</div>
			<br/>
			<br/>
			

			<br/>
			<br/>
			
			&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<button  type="submit" class="modif" >Valider</button>
			
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
