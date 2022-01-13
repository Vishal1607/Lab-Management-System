package com.sldevcode.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;


@WebServlet("/semm")
public class Semm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Semm() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {

			// Initialize the database
			Connection con=connectionn.initializeDatabase();

			// Create a SQL query to insert data into demo table
			// demo table consists of two columns, so two '?' is used
			PreparedStatement st = con
				.prepareStatement("insert into sem values(?, ? , ?, ?, ?, ?)");
				st.setString(1, request.getParameter("string1"));
				st.setString(2, request.getParameter("string2"));
				st.setString(3, request.getParameter("string3"));
				st.setString(4, request.getParameter("string4"));
				st.setString(5, request.getParameter("string5"));
				st.setString(6, request.getParameter("string6"));
			

			// For the first parameter,
			// get the data using request object
			// sets the data to st pointer
			// Same for second parameter

			// Execute the insert command using executeUpdate()
			// to make changes in database
			st.executeUpdate();

			// Close all the connections
			st.close();
			con.close();

			// Get a writer pointer
			// to display the successful result
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		


	}
}