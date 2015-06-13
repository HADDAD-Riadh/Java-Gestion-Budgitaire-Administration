package com.controller.servlets;

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


public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
String page;
	/**
	 * @see HttpServlet#HttpServlet()
	 */

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		MyContext.WebAppContext = WebApplicationContextUtils
				.getRequiredWebApplicationContext(this.getServletContext());

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		AdministrateurDAOImpl admdao = (AdministrateurDAOImpl) MyContext.WebAppContext.getBean("AdministrateurDAOImpl");
		String login=request.getParameter("login");
		System.out.println(login);
		String password=request.getParameter("password");
		System.out.println(password);
		
		 
	        Administrateur rev=admdao.isExiste(login, password);
	       // System.out.println(rev.getID_medecin());
	        
	       
	    
	        if(rev!=null){
	        
	        	
	        	page="EspaceAdmin.jsp";
	        
	        	request.setAttribute("idadmin", rev.getId_admin());
	        	request.setAttribute("nomadmin", rev.getNom());
	        	request.setAttribute("prenomadmin", rev.getPrenom());
	      
	        }
	        else
	        {
	        	
				page="loginAdministrateur.jsp";
			}
		  		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
				if (dispatcher != null) {
					dispatcher.forward(request, response);
				}
				
			}}
	        
		
	
