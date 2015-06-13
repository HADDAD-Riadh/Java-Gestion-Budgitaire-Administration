package com.email.web;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.context.config.MyContext;
import com.web.server.ibatis.daoImpl.DemandeDAOImpl;
import com.web.server.ibatis.daoImpl.EtudiantDAOImpl;
import com.web.server.ibatis.model.Demande;
import com.web.server.ibatis.model.Etudiant;




/**
 * Servlet implementation class InitContextServlet
 */


public class ecrireDemande extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		MyContext.WebAppContext = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
 
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	MyContext.WebAppContext = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
		
	
		Demande dist = new Demande();
		
		dist.setIdetudiant(Integer.parseInt(request.getParameter("id")));
	
		dist.setAccepte("en cours");
		dist.setDateDebut(request.getParameter("debut"));
		dist.setDateFin(request.getParameter("fin"));
		dist.setDepensesnecessaires(Double.parseDouble(request.getParameter("depense")));
		dist.setEtatDemande("nontraite");
		dist.setNomaboratoire("Enit SYSCOM");
		dist.setLieu(request.getParameter("lieu"));
		dist.setSujetSatge_OfficeMultifiscal(request.getParameter("sujet"));
		dist.setMentant(Double.parseDouble(request.getParameter("montant")));
		
		
		
		
		
		
		
	
	
		
		DemandeDAOImpl distri = (DemandeDAOImpl) MyContext.WebAppContext.getBean("DemandeDAOImpl");
		
		
		
		distri.insert(dist);
		EtudiantDAOImpl me = (EtudiantDAOImpl) MyContext.WebAppContext.getBean("EtudiantDAOImpl");
		Etudiant med=me.selectByPrimaryKey(Integer.parseInt(request.getParameter("id")));
		
		request.setAttribute("idetudiant", med.getIdEtudiant());
		request.setAttribute("nometudiant", med.getNom());
		request.setAttribute("prenometudiant", med.getPrenom());
		
		  RequestDispatcher dispatcher = request.getRequestDispatcher("BoiteReceptionEtudiant.jsp");
          if (dispatcher != null){
            dispatcher.forward(request, response);
          
      }
		
		
}
		
		
	
      
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);	// TODO Auto-generated method stub
	}

}
