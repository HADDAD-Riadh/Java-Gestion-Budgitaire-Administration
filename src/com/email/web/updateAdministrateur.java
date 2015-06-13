package com.email.web;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.support.WebApplicationContextUtils;

import com.context.config.MyContext;
import com.web.server.ibatis.daoImpl.AdministrateurDAOImpl;
import com.web.server.ibatis.model.Administrateur;



/**
 * Servlet implementation class InitContextServlet
 */


public class updateAdministrateur extends HttpServlet {
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
		
	
		Administrateur dist = new Administrateur();
		dist.setId_admin(Integer.parseInt(request.getParameter("idadmin")));
		
		dist.setLogin(request.getParameter("login"));
		dist.setPassword(request.getParameter("password"));
		dist.setNom(request.getParameter("nom"));
		
		dist.setPrenom(request.getParameter("prenom"));
	
		
		
		
	
	
		
		AdministrateurDAOImpl distri = (AdministrateurDAOImpl) MyContext.WebAppContext.getBean("AdministrateurDAOImpl");
		distri.updateByPrimaryKeySelective(dist);
		
		request.setAttribute("idadmin", request.getParameter("idadmin"));
		request.setAttribute("nomadmin", request.getParameter("nom"));
		request.setAttribute("prenomadmin", request.getParameter("prenom"));
		
		  RequestDispatcher dispatcher = request.getRequestDispatcher("AdminCompte.jsp");
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
