package com.app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Account;

public class app extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String action=request.getParameter("action");
		if(action==null){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		
		if(action.equals("login")){
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			Account account = new Account();
			boolean status=false;
			try {
				status = account.doLogin(email,password);
			} catch (Exception e) {}
			
			if(status== true){
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("msg", "Invalid Login");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}

		if(action.equals("category")){
			String cat_id=request.getParameter("cat_id");
			request.setAttribute("loc", cat_id);
			request.getRequestDispatcher("details.jsp").forward(request, response);
		}
		}
	
	}


