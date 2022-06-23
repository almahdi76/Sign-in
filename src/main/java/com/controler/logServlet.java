package com.controler;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Loging;


@WebServlet("/logServlet")
public class logServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	HashMap <String,String> person=new HashMap<>();
    public logServlet() {
    	person.put("almahdi","a123");
    	person.put("frank","1234");
    	person.put("noe","555");
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String pass=request.getParameter("password");
		String phon=request.getParameter("telephon");
		String mail=request.getParameter("email");
		String message="";
		if(name.trim().isEmpty()||pass.trim().isEmpty()||phon.trim().isEmpty()||mail.trim().isEmpty()) {
			message="veuillez assurer que tous les champs sont remplir SVP ";
			request.setAttribute("message", message);
			this.getServletContext().getRequestDispatcher("/Log.jsp").forward(request, response);
			
		}else if(person.containsKey(name)&&person.containsValue(pass)) {
			message="Bienvenue  "+name;
			request.setAttribute("message", message);
			Loging lg=new Loging();
			lg.setUsername(name);lg.setPassword(pass);lg.setTelephon(phon);
			lg.setEmail(mail);
			//request.setAttribute("log", lg);
			request.getSession().setAttribute("log", lg);
			this.getServletContext().getRequestDispatcher("/WEB-INF/profil.jsp").forward(request, response);
			
			
			
		}else {
			message="votre nom / password ne sont pas correct !! ";
			request.setAttribute("message", message);
			this.getServletContext().getRequestDispatcher("/Log.jsp").forward(request, response);
			
		}
		
		
		
	}

}
