package com.ushrd;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginOk
 */
@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Connection connection;
	private Statement stmt;
	private ResultSet resultSet;
	
	private String name, id, pw, phone1, phone2, phone3, gender;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter("id");
		pw=request.getParameter("pw");
		String query="select * from memberA where id='"+id
				+"' and pw='"+pw+"'";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection=DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","us","us");
			
			stmt=connection.createStatement();
			resultSet=stmt.executeQuery(query);
			
			while(resultSet.next()){
				name=resultSet.getString("name");
				id=resultSet.getString("id");
				pw=resultSet.getString("pw");
				phone1=resultSet.getString("phone1");
				phone2=resultSet.getString("phone2");
				phone3=resultSet.getString("phone3");
				gender=resultSet.getString("gender");
			}
			
			//아이디가 없을때의 처리를 해보자
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("name", name);
			httpSession.setAttribute("id", id);
			httpSession.setAttribute("pw", pw);
			
			response.sendRedirect("05login/loginResult.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally{
			try{
				if(resultSet!=null)resultSet.close();
				if(stmt!=null)stmt.close();
				if(connection!=null)connection.close();
				
			}catch(Exception e2){
				resultSet=null;
				stmt=null;
				connection=null;
				e2.printStackTrace();
			}

		}
	}

}
