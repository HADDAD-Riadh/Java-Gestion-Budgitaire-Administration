<%@page import="com.web.server.ibatis.daoImpl.DocumentationDAOImpl"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@page language="java" import="java.util.*"%>
<%@page import="com.web.server.ibatis.model.Consommablemateriel"%>
<%@page import="com.web.server.ibatis.daoImpl.ConsommablematerielDAOImpl"%>


<%@page import="com.web.server.ibatis.model.Deplacementhibergment"%>
<%@page import="com.web.server.ibatis.daoImpl.DeplacementhibergmentDAOImpl"%>


<%@page import="com.web.server.ibatis.model.Documentation"%>
<%@page import="com.web.server.ibatis.daoImpl.DemandeDAOImpl"%>



<%@page import="com.web.server.ibatis.model.Equipement"%>
<%@page import="com.web.server.ibatis.daoImpl.EquipementDAOImpl"%>


<%@page import="com.web.server.ibatis.model.Maintenancediveres"%>
<%@page import="com.web.server.ibatis.daoImpl.MaintenancediveresDAOImpl"%>


<%@page import="com.web.server.ibatis.model.Manifestationsientifique"%>
<%@page import="com.web.server.ibatis.daoImpl.ManifestationsientifiqueDAOImpl"%>

<%@page import="com.web.server.ibatis.model.Missions"%>
<%@page import="com.web.server.ibatis.daoImpl.MissionsDAOImpl"%>

<%@page import="com.web.server.ibatis.model.Renumeration"%>
<%@page import="com.web.server.ibatis.daoImpl.RenumerationDAOImpl"%>

<%@page import="com.web.server.ibatis.model.Soustraitance"%>
<%@page import="com.web.server.ibatis.daoImpl.SoustraitanceDAOImpl"%>

<%@page import="com.web.server.ibatis.model.Stage"%>
<%@page import="com.web.server.ibatis.daoImpl.StageDAOImpl"%>
<%@page import="com.context.config.MyContext"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>ENIT</title>








<!-- The styles -->
<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
<!-- <style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style> -->
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/charisma-app.css" rel="stylesheet">
<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
<link href='css/fullcalendar.css' rel='stylesheet'>
<link href='css/fullcalendar.print.css' rel='stylesheet' media='print'>
<link href='css/chosen.css' rel='stylesheet'>
<link href='css/uniform.default.css' rel='stylesheet'>
<link href='css/colorbox.css' rel='stylesheet'>
<link href='css/jquery.cleditor.css' rel='stylesheet'>
<link href='css/jquery.noty.css' rel='stylesheet'>
<link href='css/noty_theme_default.css' rel='stylesheet'>
<link href='css/elfinder.min.css' rel='stylesheet'>
<link href='css/elfinder.theme.css' rel='stylesheet'>
<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='css/opa-icons.css' rel='stylesheet'>
<link href='css/uploadify.css' rel='stylesheet'>



<link rel="shortcut icon" href="images/sanitaire.gif" />
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/image_slide.js"></script>
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
				<li class="current"><a href="EspaceAdmin.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Rubriques</a></li>
				<li><a href="AdminReception.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Demandes et receptions</a></li>
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
 le cadre de leur recherche et développement.</p>
				</div>
				<!--close sidebar_item-->
			</div>
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
			<br />
			<h1>Liste des rubriques</h1>
			<%ConsommablematerielDAOImpl vdo =(ConsommablematerielDAOImpl)MyContext.WebAppContext.getBean("ConsommablematerielDAOImpl");
Consommablemateriel listemed=vdo.selectByPrimaryKey(1);




DeplacementhibergmentDAOImpl deplace =(DeplacementhibergmentDAOImpl)MyContext.WebAppContext.getBean("DeplacementhibergmentDAOImpl");
Deplacementhibergment listedeplace=deplace.selectByPrimaryKey(1);





DocumentationDAOImpl documenta =(DocumentationDAOImpl)MyContext.WebAppContext.getBean("DocumentationDAOImpl");
Documentation listedocumen=documenta.selectByPrimaryKey(1);




EquipementDAOImpl equipem =(EquipementDAOImpl)MyContext.WebAppContext.getBean("EquipementDAOImpl");
Equipement listeequipeme=equipem.selectByPrimaryKey(1);


MaintenancediveresDAOImpl maintenance =(MaintenancediveresDAOImpl)MyContext.WebAppContext.getBean("MaintenancediveresDAOImpl");
Maintenancediveres listemaintenance=maintenance.selectByPrimaryKey(1);





ManifestationsientifiqueDAOImpl manifest =(ManifestationsientifiqueDAOImpl)MyContext.WebAppContext.getBean("ManifestationsientifiqueDAOImpl");
Manifestationsientifique listemanifes=manifest.selectByPrimaryKey(1);




MissionsDAOImpl mission =(MissionsDAOImpl)MyContext.WebAppContext.getBean("MissionsDAOImpl");
Missions listemession=mission.selectByPrimaryKey(1);






RenumerationDAOImpl renumera =(RenumerationDAOImpl)MyContext.WebAppContext.getBean("RenumerationDAOImpl");
Renumeration listerenumera=renumera.selectByPrimaryKey(1);



SoustraitanceDAOImpl soustraittance =(SoustraitanceDAOImpl)MyContext.WebAppContext.getBean("SoustraitanceDAOImpl");
Soustraitance listesoutraitance=soustraittance.selectByPrimaryKey(1);



StageDAOImpl stage =(StageDAOImpl)MyContext.WebAppContext.getBean("StageDAOImpl");
Stage listestage=stage.selectByPrimaryKey(1);


%>


<%
String missions="";
String stagee="";


if((listestage.getReliquat2013()<=10000)){
	stagee="Attention Mentants Stage <= 10000";
	
}
if((listemession.getReliquat2013()<=10000)){
	missions="Attention Mentants Mission <= 10000";
	
}
%>
<%-- 			
			<%   
			String equipement="";
			String soustraitance="";
			String consommable="";
			String missions="";
			String stagee="";
			String deplacement="";
			String manifastation="";
			String renumeration="";
			String documentation="";
			String maintenan="";
			if((listeequipeme.getReliquat2013()<=10000)){
				equipement="Attention Mentants Equipement <= 10000";
				
			}
			if((listedeplace.getReliquat2013()<=10000)){
				deplacement="Attention Mentants Deplacement <= 10000";
				
			}
			if((listedocumen.getReliquat2013()<=10000)){
				documentation="Attention Mentants Documentation <= 10000";
				
			}
			if((listemaintenance.getReliquat2013()<=10000)){
				maintenan="Attention Mentants Maintenance <= 10000";
				
			}
			if((listemanifes.getReliquat2013()<=10000)){
				manifastation="Attention Mentants Manifestation  <= 10000";
				
			}
			if((listemed.getReliquat2013()<=10000)){
				consommable="Attention Mentants Consommable <= 10000";
				
			}
			if((listemession.getReliquat2013()<=10000)){
				missions="Attention Mentants Mession <= 10000";
				
			}
			if((listerenumera.getReliquat2013()<=10000)){
				renumeration="Attention Mentants Renumeration <= 10000";
				
			}
			if((listesoutraitance.getReliquat2013()<=10000)){
				soustraitance="Attention Mentants Sous Traitance <= 10000";
				
			}
			if((listestage.getReliquat2013()<=10000)){
				stagee="Attention Mentants Stage <= 10000";
				
			}
			
			
			
			
			
			
			%>
			<font color="red"><%=equipement %></font><br/>
			<font color="red"><%=soustraitance %></font><br/>
			<font color="red"><%=consommable %></font><br/>
			<font color="red"><%=missions %></font><br/>
			<font color="red"><%=stagee %></font><br/>
			<font color="red"><%= deplacement%></font><br/>
			<font color="red"><%=manifastation %></font><br/>
			<font color="red"><%=renumeration %></font><br/>
			<font color="red"><%=documentation %></font><br/>
			<font color="red"><%=maintenan %></font><br/> --%>
				<h3><blink><font color="red"><%=missions %></font><br/></blink></h3>
			<blink><font color="red"><%=stagee %></font></blink>
			<div class="content_iteme"
				style="background-color: white; border-radius: 12px; width: 982px;-moz-box-shadow: 0px 0px 8px 7px #656565;
	-webkit-box-shadow: 0px 0px 8px 7px #656565;
	box-shadow: 0px 0px 8px 7px #656565;">

				<div id="content" class="span10">
					<!-- content starts -->


					<div class="row-fluid sortable">
						<div class="box span12" style="width: 935px; border-radius: 8px;-moz-box-shadow: 0px 0px 8px 7px #656565;
	-webkit-box-shadow: 0px 0px 8px 7px #656565;
	box-shadow: 0px 0px 8px 7px #656565;">
							<div class="box-header well">
								<font color="black">Rendez vous</font>
								<div class="box-icon">
									<a href="#" class="btn btn-setting btn-round"><i
										class="icon-cog"></i></a> <a href="#"
										class="btn btn-minimize btn-round"><i
										class="icon-chevron-up"></i></a>
								</div>
							</div>
							<div class="box-content">
								<table
									class="table table-striped table-bordered  "
									style="width: 900px">
									<thead>
										<tr><th>Rubrique</th>
											<th><a class="btn btn-danger">Reliquat 2012</a></th>
											<th><a class="btn btn-danger">Crédit Aloué</a></th>
											<th><a class="btn btn-danger">Dépence 2013</a></th>
											<th><a class="btn btn-danger">Reliquat 2013</a></th>
											
										</tr>
									</thead>
									<tbody>
										
		
										<tr><td><a class="btn btn-success">Consommables et petits materiels</a></td>
											<td><%=listemed.getReliquat2012()%></td>
											<td><%=listemed.getCreditaloue()%></td>
											<td class="center"><%=listemed.getDepense2013()%></td>
											<td class="center"><%=listemed.getReliquat2013()%></td>
										
										</tr>
										<tr><td><a class="btn btn-success">Deplacement et hibergement</a></td>
											<td><%=listedeplace.getReliquat2012()%></td>
											<td><%=listedeplace.getCreditaloue()%></td>
											<td class="center"><%=listedeplace.getDepense2013()%></td>
											<td class="center"><%=listedeplace.getReliquat2013()%></td>
										
										</tr>
											<tr><td><a class="btn btn-success">Documentation</a></td>
											<td><%=listedocumen.getReliquat2012()%></td>
											<td><%=listedocumen.getCreditaloue()%></td>
											<td class="center"><%=listedocumen.getDepense2013()%></td>
											<td class="center"><%=listedocumen.getReliquat2013()%></td>
										
										</tr>
											<tr><td><a class="btn btn-success">Equipement</a></td>
											<td><%=listeequipeme.getReliquat2012()%></td>
											<td><%=listeequipeme.getCreditaloue()%></td>
											<td class="center"><%=listeequipeme.getDepense2013()%></td>
											<td class="center"><%=listeequipeme.getReliquat2013()%></td>
										
										</tr>
											<tr><td><a class="btn btn-success">Maintenance et divers</a></td>
											<td><%=listemaintenance.getReliquat2012()%></td>
											<td><%=listemaintenance.getCreditaloue()%></td>
											<td class="center"><%=listemaintenance.getDepense2013()%></td>
											<td class="center"><%=listemaintenance.getReliquat2013()%></td>
										
										</tr>
											<tr><td><a class="btn btn-success">Manifestation Scientifique</a></td>
											<td><%=listemanifes.getReliquat2012()%></td>
											<td><%=listemanifes.getCreditaloue()%></td>
											<td class="center"><%=listemanifes.getDepense2013()%></td>
											<td class="center"><%=listemanifes.getReliquat2013()%></td>
										
										</tr>
											<tr><td><a class="btn btn-success">Missions</a></td>
											<td><%=listemession.getReliquat2012()%></td>
											<td><%=listemession.getCreditaloue()%></td>
											<td class="center"><%=listemession.getDepense2013()%></td>
											<td class="center"><%=listemession.getReliquat2013()%></td>
										
										</tr>
											<tr><td><a class="btn btn-success">Rénumeration</a></td>
											<td><%=listerenumera.getReliquat2012()%></td>
											<td><%=listerenumera.getCreditaloue()%></td>
											<td class="center"><%=listerenumera.getDepense2013()%></td>
											<td class="center"><%=listerenumera.getReliquat2013()%></td>
										
										</tr>
											<tr><td><a class="btn btn-success">Sous Traitance</a></td>
											<td><%=listesoutraitance.getReliquat2012()%></td>
											<td><%=listesoutraitance.getCreditaloue()%></td>
											<td class="center"><%=listesoutraitance.getDepense2013()%></td>
											<td class="center"><%=listesoutraitance.getReliquat2013()%></td>
										
										</tr>
											<tr><td ><a class="btn btn-success">Stages</a></td>
											<td><%=listestage.getReliquat2012()%></td>
											<td><%=listestage.getCreditaloue()%></td>
											<td class="center"><%=listestage.getDepense2013()%></td>
											<td class="center"><%=listestage.getReliquat2013()%></td>
										
										</tr>
									





									</tbody>
								</table>
							</div>
						</div>
						<!--/span-->

					</div>
					<!--/row-->







				</div>



				<br style="clear: both" />


				<!--close content_container-->

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


<script src="js/jquery-1.7.2.min.js"></script>
<!-- jQuery UI -->
<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
<!-- transition / effect library -->
<script src="js/bootstrap-transition.js"></script>
<!-- alert enhancer library -->
<script src="js/bootstrap-alert.js"></script>
<!-- modal / dialog library -->
<script src="js/bootstrap-modal.js"></script>
<!-- custom dropdown library -->
<script src="js/bootstrap-dropdown.js"></script>
<!-- scrolspy library -->
<script src="js/bootstrap-scrollspy.js"></script>
<!-- library for creating tabs -->
<script src="js/bootstrap-tab.js"></script>
<!-- library for advanced tooltip -->
<script src="js/bootstrap-tooltip.js"></script>
<!-- popover effect library -->
<script src="js/bootstrap-popover.js"></script>
<!-- button enhancer library -->
<script src="js/bootstrap-button.js"></script>
<!-- accordion library (optional, not used in demo) -->
<script src="js/bootstrap-collapse.js"></script>
<!-- carousel slideshow library (optional, not used in demo) -->
<script src="js/bootstrap-carousel.js"></script>
<!-- autocomplete library -->
<script src="js/bootstrap-typeahead.js"></script>
<!-- tour library -->
<script src="js/bootstrap-tour.js"></script>
<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calander plugin -->
<script src='js/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- chart libraries start -->
<script src="js/excanvas.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.pie.min.js"></script>
<script src="js/jquery.flot.stack.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<!-- chart libraries end -->

<!-- select or dropdown enhancer -->
<script src="js/jquery.chosen.min.js"></script>
<!-- checkbox, radio, and file input styler -->
<script src="js/jquery.uniform.min.js"></script>
<!-- plugin for gallery image view -->
<script src="js/jquery.colorbox.min.js"></script>
<!-- rich text editor library -->
<script src="js/jquery.cleditor.min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- file manager library -->
<script src="js/jquery.elfinder.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>

<!--close footer-->

</body>
</html>
