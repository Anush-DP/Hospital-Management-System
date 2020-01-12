package com.hospdbms.pkg;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns="/admin-login")
public class Admnlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Admnlogin() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String name=request.getParameter("username");
		String psswd=request.getParameter("password");
		if(name.equalsIgnoreCase("admin")&&psswd.equalsIgnoreCase("1234"))
		{			session.setAttribute("id",1);		
			request.getRequestDispatcher("adminpage.jsp").forward(request, response);
		}
	
		else {
			request.setAttribute("error", "Invalid username/password.");
			request.getRequestDispatcher("admin-login.jsp").forward(request, response);
	}
	}
}
