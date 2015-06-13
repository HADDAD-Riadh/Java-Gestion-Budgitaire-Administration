package com.email.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.support.WebApplicationContextUtils;

import com.context.config.MyContext;



/**
 * Servlet implementation class InitContextServlet
 */


public class InitContextServlet extends HttpServlet {
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
		
		
	  }
	   
		
		

		
		
	
      
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);	// TODO Auto-generated method stub
	}

}
