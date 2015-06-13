<%@page import="com.web.server.ibatis.dao.EtudiantDAO"%>
<%@page import="com.web.server.ibatis.daoImpl.EtudiantDAOImpl"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
	<%@page language="java" import="java.util.*"%>
<%@page import="com.web.server.ibatis.model.Demande"%>
<%@page import="com.web.server.ibatis.daoImpl.DemandeDAOImpl"%>

<%@page import="com.web.server.ibatis.model.Etudiant"%>
<%@page import="com.web.server.ibatis.daoImpl.EtudiantDAOImpl"%>

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
				<li ><a href="EspaceAdmin.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Rubriques</a></li>
				<li class="current"><a href="AdminReception.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Demandes et receptions</a></li>
			<li><a href="AdminCompte.jsp?idadmin=<%=id %>&nomadmin=<%=nom %>&prenomadmin=<%=prenom %>">Compte et Configurations</a></li>
			

			</ul>
		
				<font color="white">Bienvenue !! </font><font dir="ltr"
				color="orange">&nbsp;<%=nom %>&nbsp;<%=prenom%></font>
		</div>
		<%DemandeDAOImpl vdo =(DemandeDAOImpl)MyContext.WebAppContext.getBean("DemandeDAOImpl");
 List<Demande> listemed=vdo.getAll();



%>
		<!--close menubar-->
		<br />

		<div id="site_content">
			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_item">
						<h2><font color="orange"><b>Boite de reception</b></font></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button style="width: 80px;height:80px;border-radius:39px;background-color: orange;" ><h1><blink ><%=listemed.size() %></blink></h1></button>


					</div>
					<!--close sidebar_item-->
				</div>
				<!--close sidebar-->
				
				<!--close sidebar-->
			
				<!--close sidebar-->
			
				<!--close sidebar-->
				
				<!--close sidebar-->
			</div>
			<!--close sidebar_container-->

			

			
				<div class="content_iteme">


					
				
					<!--close content_container-->
					
					<div class="content_iteme"
				style="background-color: white; border-radius: 12px; width: 1200px;-moz-box-shadow: 0px 0px 8px 7px #656565;
	-webkit-box-shadow: 0px 0px 8px 7px #656565;
	box-shadow: 0px 0px 8px 7px #656565;">

				<div id="contente" class="span10">
					<!-- content starts -->


					<div class="row-fluid sortable">
						<div class="box span12" style="width: 1140px; border-radius: 8px;-moz-box-shadow: 0px 0px 8px 7px orange;
	-webkit-box-shadow: 0px 0px 8px 7px orange;
	box-shadow: 0px 0px 8px 7px orange;">
							<div class="box-header well">
								<font color="black">Demandes</font>
								<div class="box-icon">
									<a href="#" class="btn btn-setting btn-round"><i
										class="icon-cog"></i></a> <a href="#"
										class="btn btn-minimize btn-round"><i
										class="icon-chevron-up"></i></a>
								</div>
							</div>
	
							
								<table
									class="table table-striped table-bordered bootstrap-datatable datatable"
									style="width: 1120px;padding-left: 0px;">
									<thead>
										<tr>
											<th>N° Demande</th>
											<th>Chercheur</th>
											<th>Sujet</th>
											<th>Lieu</th>
											<th>Montant</th>
											
											<th>Depences</th>
											<th>Action</th>
											
											
											
											
										</tr>
									</thead>
									<tbody>
	
										<% 
										EtudiantDAOImpl etud =(EtudiantDAOImpl)MyContext.WebAppContext.getBean("EtudiantDAOImpl");
										 
										
										
										
for(int i=0;i<listemed.size();i++){
	Demande med =listemed.get(i);
	Etudiant etudiant=etud.selectByPrimaryKey(med.getIdetudiant());
	
%>
	
										<tr>
											<td><%=med.getIddemande()%></td>
											
											<td><img src="images/chercheur.jpg" style="width:80px;height: 80px;border-radius:12px;"><%=etudiant.getNom()%>&nbsp;<%=etudiant.getPrenom()%>&nbsp;</td>
											
											<td><%=med.getSujetSatge_OfficeMultifiscal()%></td>
											<td><%=med.getLieu()%></td>
											<td><%=med.getMentant()%></td>
											<td><%=med.getDepensesnecessaires()%></td>
											
								
											
											
											
											
										
											
											<td class="center"><a class="btn btn-danger" href="/enit/AccepterDemande.jsp?id=<%=id %>&iddemande=<%=med.getIddemande()%>&debut=<%=med.getDateDebut()%>&fin=<%=med.getDateFin()%>&nom=<%=etudiant.getNom()%>&prenom=<%=etudiant.getPrenom()%>&sujet=<%=med.getSujetSatge_OfficeMultifiscal()%>&montant=<%=med.getMentant()%>&depence=<%=med.getDepensesnecessaires()%>&lieu=<%=med.getLieu()%>&nomadmin=<%=nom%>&prenomadmin=<%=prenom%>">
													<i class="icon-zoom-in icon-white"></i>Traiter Demande
											</a></td>
										</tr>
										<%}%>





									</tbody>
								</table>
						
						</div>
						<!--/span-->

					</div>
					<!--/row-->
					<!--/span-->







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


	<!--close footer-->
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

</body>
</html>
