package com.controller.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.support.WebApplicationContextUtils;

import com.context.config.MyContext;

import com.web.server.ibatis.daoImpl.EtudiantDAOImpl;
import com.web.server.ibatis.model.Etudiant;


@SuppressWarnings("unused")
public class LoginEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		MyContext.WebAppContext = WebApplicationContextUtils
				.getRequiredWebApplicationContext(this.getServletContext());

	}

	

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		EtudiantDAOImpl vdo = (EtudiantDAOImpl) MyContext.WebAppContext
				.getBean("EtudiantDAOImpl");
		String nom = request.getParameter("login");
		String pass = request.getParameter("password");
		String jj;
		
	
		String page = "";

		Etudiant rev = vdo.isExiste(nom, pass);

		if (rev != null) {

			page = "BoiteReceptionEtudiant.jsp";
			
		
			request.setAttribute("idetudiant", rev.getIdEtudiant());
			request.setAttribute("nometudiant", rev.getNom());
			request.setAttribute("prenometudiant", rev.getPrenom());
			
			
		}

		else {
			page = "loginEtudiant.jsp";

		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		if (dispatcher != null) {
			dispatcher.forward(request, response);

		}
	}
}
