package com.hospdbms.pkg;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns="/adminlogin")
public class Admnlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Admnlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		String name=request.getParameter("username");
		String psswd=request.getParameter("password");
		if(name.equalsIgnoreCase("admin")&&psswd.equalsIgnoreCase("1234"))
		{
			request.getRequestDispatcher("/WebContent/adminpage.jsp").forward(request, response);
		}
	
		
response.getWriter().println(name+psswd);
	}

}
