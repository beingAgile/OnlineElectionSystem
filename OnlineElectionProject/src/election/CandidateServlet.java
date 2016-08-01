package election;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class CandidateServlet
 */
@WebServlet("/CandidateServlet")
@MultipartConfig(maxFileSize=1617725)
public class CandidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().println("nhfjf");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		//response.getWriter().println(firstName);
		String lastName = request.getParameter("lastName");
		//response.getWriter().println(lastName);
		String dob = request.getParameter("dob");
		//response.getWriter().println(dob);
		String gender = request.getParameter("gender");
		//response.getWriter().println(gender);
		String residentialAddress = request.getParameter("residentialAddress");
		//response.getWriter().println(residentialAddress);
		String workAddress = request.getParameter("workAddress");
		//response.getWriter().println(workAddress);
		String email = request.getParameter("email");
		//response.getWriter().println(email);
		long mobile = Long.parseLong(request.getParameter("mobile"));
		//response.getWriter().println(mobile);
		long adhaarNumber = Long.parseLong(request.getParameter("adhaarNumber"));
		//response.getWriter().println(adhaarNumber);
		
		InputStream inputStream = null;
		Part adhaarCard = request.getPart("adhaarCard");
		if(adhaarCard!=null){
			System.out.println(adhaarCard.getName());
			System.out.println(adhaarCard.getSize());
			System.out.println(adhaarCard.getContentType());
			inputStream = adhaarCard.getInputStream();
		}
		
		String result =null;
		Connection con=null;
		try{
			HttpSession session = request.getSession(false);
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "garima07");
			
			Statement statement = con.createStatement();
			String sql ="select * from Candidate where adhaarNumber='"+adhaarNumber+"' or email ='"+email+"'";
			ResultSet resultSet = statement.executeQuery(sql);
			if(resultSet.next()){
				result="0";
			}
			else{
					String password = firstName.substring(0,1)+email.substring(3,5)+lastName.substring(0,1)+gender.substring(2,3)+firstName.substring(1,2)+lastName.substring(0,1)+
						   gender.substring(3,4);
				 	sql = "insert into candidate values(candidate_id_seq.nextval,?,?,?,?,?,?,?,?,?,?,?)";
				 	
					PreparedStatement preparedStatement = con.prepareStatement(sql);
					preparedStatement.setString(1, password);
					preparedStatement.setString(2, firstName);
					preparedStatement.setString(3, lastName);
					preparedStatement.setString(4, dob);
					preparedStatement.setString(5, gender);
					preparedStatement.setString(6, residentialAddress);
					preparedStatement.setString(7, workAddress);
					preparedStatement.setString(8, email);
					preparedStatement.setLong(9, adhaarNumber);
					if(inputStream!=null)
					preparedStatement.setBlob(10, inputStream);
					preparedStatement.setLong(11, mobile);
					
					int res =preparedStatement.executeUpdate();
					System.out.println(result);
					if(res>=1){
						resultSet=statement.executeQuery("select * from CANDIDATE where ADHAARNUMBER="+adhaarNumber);
						if(resultSet.next()){	
							result="1";
							session.setAttribute("userId", resultSet.getLong(1));
							session.setAttribute("password", password);
						}
					}
					else{
							result="-1";
					}
			}	
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null){
				try{
					con.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
		}
		response.sendRedirect("LoginFolder/CandidateSignup.jsp?result"+result);
	}
}
