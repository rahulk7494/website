
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserLogin extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException
    {
        String id=request.getParameter("userid");
        String pwd=request.getParameter("password");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
            java.sql.PreparedStatement ps=con.prepareStatement("select * from login where username=? and password=?");
            ps.setString(1, id);
            ps.setString(2, pwd);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                
                response.sendRedirect("student-home.html");
            }
            else
            {
                PrintWriter out=response.getWriter();
                out.println("id and password doesn't match");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
