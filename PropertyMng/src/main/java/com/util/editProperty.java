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


public class editProperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public editProperty() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String propID = request.getParameter("propID");
	    String propName = request.getParameter("propName");
	    String propAddress = request.getParameter("propAddress");
	    String propPrice = request.getParameter("propPrice");
	    String propStatus = request.getParameter("propStatus");

	    // Check for null values and handle them as needed
	    if (propID == null || propName == null || propAddress == null || propPrice == null || propStatus == null) {
	        // Handle the case where one or more parameters are missing
	        // You can redirect to an error page or show an error message
	        response.sendRedirect("error.jsp");
	        return;
	    }

	    Connection con = null;
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");

	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propertytable", "root", "IT22077288");

	        PreparedStatement pst = con.prepareStatement("UPDATE proptable SET propName=?, propAddress=?, propPrice=?, propStatus=? WHERE propID = ?");
	        pst.setString(1, propName);
	        pst.setString(2, propAddress);
	        pst.setString(3, propPrice);
	        pst.setString(4, propStatus);
	        pst.setString(5, propID); // Assuming propID is a string; if it's an integer, use setInt

	        int rowCount = pst.executeUpdate();
	        
	        RequestDispatcher dispatcher = null;

	        if (rowCount > 0) {
	            request.setAttribute("status", "Success");
	            // Forward the request to a success page (e.g., adminHome.jsp)
	            dispatcher = request.getRequestDispatcher("UpdateSuccess.jsp");
	            dispatcher.forward(request, response);
	        } else {
	            request.setAttribute("status", "Failed");
	            // Forward the request to an error page (e.g., error.jsp)
	            dispatcher = request.getRequestDispatcher("error.jsp");
	            dispatcher.forward(request, response);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	        // Handle exceptions, e.g., redirect to an error page or log the error
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
