package election;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VoterServlet
 */
@WebServlet("/VoterServlet")
public class VoterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoterServlet() {
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
		   String firstName = request.getParameter("firstName");
		   String lastName = request.getParameter("lastName");
		   String email = request.getParameter("email") ;
		   String gender = request.getParameter("gender") ;
		   String dob = request.getParameter("dob") ;
		   String adhaarNumber =request.getParameter("adhaarNumber");
		   long adhaar_number = Long.parseLong(adhaarNumber);
		   
		   
		   try{
    		   Class.forName("oracle.jdbc.driver.OracleDriver");
			   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "garima07");  
			   Statement statement = con.createStatement();
			   String sql = "select * from Voters where adhaarNumber='"+adhaarNumber+"' or email ='"+email+"'";
			   ResultSet resultSet = statement.executeQuery(sql);
				if(resultSet.next()){
					request.setAttribute("result", "<p><center><font color='white'>Already registered Email or Adhaar Card Number !!</font></center></p>");
				}
				else{
					
					 String password = firstName.substring(0,1)+email.substring(3,5)+lastName.substring(0,1)+adhaarNumber.substring(7,8)+firstName.substring(1,2)+lastName.substring(0,1)+
							   adhaarNumber.substring(3,4);
					  // out.print(password);
					  
					   sql = "insert into VOTERS values(id_seq.nextval,?,?,?,?,?,?,?)";
					   PreparedStatement preparedStatement = con.prepareStatement(sql);
					   preparedStatement.setString(1,password);
					   preparedStatement.setString(2,firstName);
					   preparedStatement.setString(3,lastName);
					   preparedStatement.setString(4,email);
					   preparedStatement.setLong(5,adhaar_number);
					   preparedStatement.setString(6,gender);
					   preparedStatement.setString(7,dob);
					   int i =preparedStatement.executeUpdate();
					   if(i>0){
						   resultSet=statement.executeQuery("select id from VOTERS where ADHAARNUMBER="+adhaar_number);
						   if(resultSet.next())
						      request.setAttribute("result","<p><font color='white'><center>You have registered successfully!<br>Login Id &nbsp;:&nbsp;"+ resultSet.getLong(1) +"<br>Password &nbsp;&nbsp;"+password+"<br><a href='LoginFolder/VoterLogin.jsp'>Click Here to Login</center></font></p>");		   
						   }
						   else{
							  request.setAttribute("result","<p><font color='white'><center>Cannot register right now!<br> Try again later!</center></font></p>");		      
						   }
					}
    	   }catch(Exception e){
    		   System.out.println("Exception in VoterSignup");
    		   e.printStackTrace();
    	   }
		   
		   request.getRequestDispatcher("/LoginFolder/VoterSignup.jsp").forward(request, response);
	}

}
