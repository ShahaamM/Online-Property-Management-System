package com.util;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
	
		RequestDispatcher dispatcher = null;
		
		Connection con = null;
		
		HttpSession session = request.getSession();
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_register_login", "root", "admin");
			
			PreparedStatement pst = con.prepareStatement("SELECT * from user where email = ? AND password = ?");
		
			
			pst.setString(1, email);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			
			
			
			if (rs.next()) {
			    session.setAttribute("email", rs.getString("email"));
			    session.setAttribute("id", rs.getString("id")); // Assuming the column name in the database is "id"
			    session.setAttribute("full_name", rs.getString("full_name")); // Assuming the column name in the database is "full_name"
			    session.setAttribute("password", rs.getString("password")); // Assuming the column name in the database is "password"
			    session.setAttribute("phone", rs.getString("phone")); // Assuming the column name in the database is "phone"
			    session.setAttribute("username", rs.getString("username")); // Assuming the column name in the database is "username"
			    dispatcher = request.getRequestDispatcher("dashboard.jsp");
			}

				
				
			else {
				
				request.setAttribute("status", "Failed");
				
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			
			dispatcher.forward(request, response);
			
		}
		catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		finally {
			try {
				con.close();
				
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
			
//			List<user> userDetails = CustomerDBUtil.validate(email, password);
//			request.setAttribute("userDetails", "userDetails");
			
		}
	}
		
	}

