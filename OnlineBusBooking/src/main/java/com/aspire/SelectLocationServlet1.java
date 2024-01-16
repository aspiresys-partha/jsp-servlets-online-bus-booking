/*Application Title:Online Bus Booking
Author name:Parthasarathy E
create on:07/02/2023
last Modified Date and time:01/04/2023
reviewed by:anushya
reviewed Date:20/3/2023 */
package com.aspire;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SelectLocationServlet
 */
public class SelectLocationServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectLocationServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String source =request.getParameter("source");
		String destination= request.getParameter("destination");
		String date =request.getParameter("date");
		 
		HttpSession httpsession=request.getSession();
		httpsession.setAttribute("source",source);
		httpsession.setAttribute("destination",destination);
		httpsession.setAttribute("date",date);
		
		RequestDispatcher dispatcher=null;
		Connection connection= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebusbooking?useSSL=false","root","partha");
			String query = "SELECT MAX(serialnumber) AS users_id FROM selectedlocation";
			PreparedStatement preparedstatement = connection.prepareStatement(query);
			ResultSet resultset = preparedstatement.executeQuery();
			int users_id= 0;
			if(resultset.next()) 
				{
				users_id= resultset.getInt("users_id")+1;
				}
			else 
				{
				users_id= 1;
				}
			String serialnumber = Integer.toString(users_id);
			String query1 = "insert into selectedlocation values(?,?,?,?)";
			PreparedStatement preparedstatement1=connection.prepareStatement(query1);
			preparedstatement1.setString(1,serialnumber);
			preparedstatement1.setString(2,source);
			preparedstatement1.setString(3,destination);
			preparedstatement1.setString(4,date);
			
			int rowCount= preparedstatement1.executeUpdate();

			dispatcher=request.getRequestDispatcher("SelectBus1.jsp");
			
			if(rowCount>0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}catch(Exception exception) {
			exception.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException exception) {
				// TODO Auto-generated catch block
				exception.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
