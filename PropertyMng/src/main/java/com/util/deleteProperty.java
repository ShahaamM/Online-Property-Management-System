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


public class deleteProperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public deleteProperty() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String propID = request.getParameter("propID");
		
		 RequestDispatcher dispatcher = null;
	        
	        Connection con = null;
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propertytable", "root", "IT22077288");
	            
	            PreparedStatement pst = con.prepareStatement("DELETE FROM proptable WHERE propID = ?");
	            pst.setString(1, propID);
	            
	            int rowCount = pst.executeUpdate();
	            
	            dispatcher = request.getRequestDispatcher("deleteSuccess.jsp");

	            if (rowCount > 0) {
	                // Successful deletion
	                request.setAttribute("status", "Success");
	            } else {
	                // Handle deletion failure
	                request.setAttribute("status", "Failed");
	            }
	            
	            dispatcher.forward(request, response);
	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (con != null) {
	                    con.close();
	                }
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	}
}
