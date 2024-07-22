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
 * Servlet implementation class delete
 */
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String id = request.getParameter("id");
		
		
        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_register_login", "root", "admin");

            // Create a PreparedStatement to delete the record with the specified Id
            PreparedStatement pst = con.prepareStatement("DELETE FROM user WHERE id = ?");
            pst.setString(1, id); // Set the Id parameter

            int rowCount = pst.executeUpdate();

            dispatcher = request.getRequestDispatcher("register.jsp");

            if (rowCount > 0) {
                // Successful deletion
                request.setAttribute("status", "Success");
            } else {
                // Handle deletion failure
                request.setAttribute("status", "Failed");
            }
            
            dispatcher.forward(request, response);
            
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database-related exceptions
            response.getWriter().println("Database error: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            // Handle other exceptions
            response.getWriter().println("An unexpected error occurred.");
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	}

}
