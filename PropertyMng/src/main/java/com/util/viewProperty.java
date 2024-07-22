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

public class viewProperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public viewProperty() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String propID = request.getParameter("propID");
		
		RequestDispatcher dispatcher = null; // Initialize here

        Connection con = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propertytable", "root", "IT22077288");

            // Create a PreparedStatement to select the record with the specified Id
            PreparedStatement pst = con.prepareStatement("SELECT * FROM proptable WHERE propID = ?");
            pst.setString(1, propID); // Set the Id parameter

            ResultSet result = pst.executeQuery();

            if (result.next()) {
                // Retrieve data from the ResultSet
            	String propName = result.getString("propName");
            	String propAddress = result.getString("propAddress");
            	String propPrice = result.getString("propPrice");
            	String propStatus = result.getString("propStatus");

                
                // Set attributes to be used in the JSP
                request.setAttribute("propName", propName);
                request.setAttribute("propAddress", propAddress);
                request.setAttribute("propPrice", propPrice);
                request.setAttribute("propStatus", propStatus);

                dispatcher = request.getRequestDispatcher("viewProp.jsp");
            } else {
                // Handle case where no record was found
                dispatcher = request.getRequestDispatcher("errorRecord.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            // Move the dispatcher.forward call out of the try-catch-finally block
            dispatcher.forward(request, response);
        }
	
	}
}
