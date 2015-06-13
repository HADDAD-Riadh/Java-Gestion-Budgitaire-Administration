package com.email.web;


import java.awt.Color;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.naming.java.javaURLContextFactory;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.context.config.MyContext;
import com.web.server.ibatis.daoImpl.AdministrateurDAOImpl;
import com.web.server.ibatis.daoImpl.DemandeDAOImpl;
import com.web.server.ibatis.daoImpl.EtudiantDAOImpl;
import com.web.server.ibatis.daoImpl.StageDAOImpl;
import com.web.server.ibatis.model.Demande;
import com.web.server.ibatis.model.Etudiant;
import com.web.server.ibatis.model.Stage;




/**
 * Servlet implementation class InitContextServlet
 */


public class AccepterDemande extends HttpServlet {
	String page="";
	
	SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy");
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
	
	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	MyContext.WebAppContext = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
	DemandeDAOImpl dem = (DemandeDAOImpl) MyContext.WebAppContext.getBean("DemandeDAOImpl");
	StageDAOImpl distri = (StageDAOImpl) MyContext.WebAppContext.getBean("StageDAOImpl");
	Stage s=distri.selectByPrimaryKey(1);
	
		Demande demande = new Demande();
		demande.setIddemande(Integer.parseInt(request.getParameter("iddemande")));
		demande.setEtatDemande("traite");
		demande.setAccepte(request.getParameter("accepte"));
		Double m=Double.parseDouble(request.getParameter("montant"));
		
		
		System.out.println("같같같같같같같같"+request.getParameter("accepte"));
		if(request.getParameter("accepte").equals("oui") )
		{	
		Double b=s.getReliquat2012();
		System.out.println("같같같같같같같같ca"+b);
		Double n=s.getReliquat2013();
		System.out.println("같같같같같같같같ca"+n);
			if(m<=(b)){
				
				System.out.println("같같같같같같같같 m de dans"+m);
				b=b-m;
				System.out.println("같같같같같같같같"+b);
				s.setReliquat2012(b);
				distri.updateByPrimaryKey(s);
				page="AdminReception.jsp";
				
				
			}
			else{
				m=m-b;
				b=0.0;
				if(m<=n){
				n=n-m;
				System.out.println("같같같같같같같같"+n);
s.setReliquat2012(b);
s.setReliquat2013(n);
distri.updateByPrimaryKey(s);
page="AdminReception.jsp";
				}
				else{ 
					
					demande.setEtatDemande("nontraite");
					dem.updateByPrimaryKeySelective(demande);
					page="erreur.jsp";
		JOptionPane j=new JOptionPane();
			j.setBackground(Color.red);
				j.setMessage("Solde insuffisant");
			
				j.show();
//				
//					  RequestDispatcher dispatcher = request.getRequestDispatcher("AdminReception.jsp");
//			          if (dispatcher != null){
//			            dispatcher.forward(request, response);
			          
//			          }
				}
			}
				
			
		}
	
		
		
		
		
		
	
	
		
		
		dem.updateByPrimaryKeySelective(demande);
		EtudiantDAOImpl distrii = (EtudiantDAOImpl) MyContext.WebAppContext.getBean("EtudiantDAOImpl");
		 Etudiant e=distrii.selectByPrimaryKey(Integer.parseInt(request.getParameter("id")));
		
		request.setAttribute("idetudiant", e.getIdEtudiant());
		request.setAttribute("nometudiant", e.getNom());
		request.setAttribute("prenometudiant", e.getPrenom());
		
		
		
		  RequestDispatcher dispatcher = request.getRequestDispatcher(page);
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
