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
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SelectedSeatServlet
 */
public class SelectedSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectedSeatServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession httpsession=request.getSession();
		String date=(String) httpsession.getAttribute("date");
		String travelsid=(String)httpsession.getAttribute("travelsid");
	    String[] seats=request.getParameterValues("seats");
	    String seat="";
	    for(String str:seats) {
	    	seat=seat.concat(str);
	    	seat=seat.concat(" ");
	    }
	    //System.out.println(seat);
//		//System.out.println(request.getParameterValues("seats"));
//		StringBuilder stringbuilder= new StringBuilder();
//		for(int i=0;i<seats.length;i++){
//	     stringbuilder.append( seats[i]);
//	     //System.out.println(stringbuilder.toString());
//		}
//		String selected_seat=Arrays.toString(seats);
	   //System.out.println(selected_seat);
		RequestDispatcher dispatcher=null;
		Connection connection= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebusbooking?useSSL=false","root","partha");
			String query = "SELECT MAX(userid) AS users_id FROM selectedseat";
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
            //  String userid = Integer.toString(users_id);
			String query1="SELECT * FROM selectedseat WHERE travelsid='"+travelsid+"' and userid='"+users_id+"'";
			ResultSet resultset1 = preparedstatement.executeQuery(query1);
			int z=0;
			while(resultset1.next()) {
				z=1;
			}
			if(z==1) {
			String query2 = "UPDATE selectedseat set userid = ? and date = ? and selected_seat ='"+seat+"' where travelsid='"+travelsid+"'";
			PreparedStatement preparedstatement1=connection.prepareStatement(query2);
			preparedstatement1.setInt(1, users_id);
			preparedstatement1.setString(2, date);
			//preparedstatement1.setString(3, date);
			//preparedstatement1.setString(3,seat);
			
			int rowCount= preparedstatement1.executeUpdate();
			dispatcher=request.getRequestDispatcher("Details.jsp");
			if(rowCount>0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			}
			else if(z==0) {
				String query2="INSERT INTO selectedseat values(?,?,?,?)";
				PreparedStatement preparedstatement1=connection.prepareStatement(query2);
				preparedstatement1.setInt(1, users_id);
				preparedstatement1.setString(2, travelsid);
				preparedstatement1.setString(3, date);
				preparedstatement1.setString(4, seat);
				int rowCount= preparedstatement1.executeUpdate();
				
			dispatcher=request.getRequestDispatcher("Details.jsp");
			if(rowCount>0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}}catch(Exception exception) {
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
