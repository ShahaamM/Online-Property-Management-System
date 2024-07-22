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
import java.sql.SQLException;

/**
 * Servlet implementation class update
 */
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String full_name = request.getParameter("full_name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		RequestDispatcher dispatcher = null;
		
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_register_login", "root", "admin");
			
			PreparedStatement pst = con.prepareStatement("UPDATE user SET full_name = '"+full_name+"' , email = '"+email+"' ,  phone = '"+phone+"', username = '"+username+"', password = '"+password+"'  WHERE id = '"+id+"'");
		
			int rowCount = pst.executeUpdate();
			
			
			
			
			dispatcher = request.getRequestDispatcher("dashboard.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "Success");
			}
			else {
				request.setAttribute("status", "Failed");
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
		}
		
		
	}

}
