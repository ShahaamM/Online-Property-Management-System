package com.util;

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

import jakarta.servlet.RequestDispatcher;

@WebServlet("/InsertDataServlet")
public class PropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyServlet() {
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
		
		String propName = request.getParameter("propName");
        String propAddress = request.getParameter("propAddress");
        String propPrice = request.getParameter("propPrice");
        String propStatus = request.getParameter("propStatus");
		
        RequestDispatcher dispatcher = null; 
        
        Connection con = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propertytable", "root", "IT22077288");

            PreparedStatement pst = con.prepareStatement("INSERT INTO proptable(propName, propAddress, propPrice, propStatus) VALUES (?, ?, ?, ?)");
            pst.setString(1, propName);
            pst.setString(2, propAddress);
            pst.setString(3, propPrice);
            pst.setString(4, propStatus);
            
            
            int rowCount = pst.executeUpdate();
            
            dispatcher = request.getRequestDispatcher("addSuccess.jsp");
            
            if(rowCount > 0) {
				request.setAttribute("status", "Success");
			}
			else {
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


