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

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLoginServlet1
 */
public class UserLoginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username =request.getParameter("username");
		String userpassword= request.getParameter("password");
		HttpSession session= request.getSession();
		RequestDispatcher dispatcher=null;
		Connection connection= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebusbooking?useSSL=false","root","partha");
			PreparedStatement preparedstatement= connection.prepareStatement("select * from usersdetails where username = ? and userpassword = ?");
			preparedstatement.setString(1, username);
			preparedstatement.setString(2, userpassword);
			ResultSet resultset= preparedstatement.executeQuery();
			if(resultset.next()) {
				session.setAttribute("name",resultset.getString("username"));
				dispatcher= request.getRequestDispatcher("SelectLocation.jsp");
			}
			else {
				request.setAttribute("status", "failed");
				dispatcher= request.getRequestDispatcher("UserLogin.jsp");
			}
			dispatcher.forward(request, response);
		}catch(Exception exception) {
			exception.printStackTrace();
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
