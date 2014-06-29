import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * The Image servlet for serving from database.
 * @author BalusC
 * @link http://balusc.blogspot.com/2007/04/imageservlet.html
 */
public class ImageServlet extends HttpServlet {

    // Constants ----------------------------------------------------------------------------------

    private static final int DEFAULT_BUFFER_SIZE = 10240; // 10KB.

    private static final String SQL_FIND = "SELECT content, contentType, contentLength FROM Image WHERE name = ?";

    // Actions ------------------------------------------------------------------------------------

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Prepare.
    String name = request.getPathInfo().substring(1); // Returns "foo.gif". You may want to do nullchecks here to avoid NPE's.
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    try {
        // Query DB.
        Class.forName("com.mysql.jdbc.Driver");
        statement = connection.prepareStatement(SQL_FIND);
        statement.setString(1, name);
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            // Image found, prepare response and send it.
            response.setContentType(resultSet.getString("contentType"));
            response.setContentLength(resultSet.getInt("contentLength"));
            response.setHeader("Content-Disposition", "inline;filename=\"" + name + "\"");
            BufferedInputStream input = null;
            BufferedOutputStream output = null;

            try {
                input = new BufferedInputStream(resultSet.getBinaryStream("content"));
                output = new BufferedOutputStream(response.getOutputStream());
                byte[] buffer = new byte[1024];

                for (int length; (length = input.read(buffer)) > -1;) {
                    output.write(buffer, 0, length);
                }
            } finally {
                if (output != null) try { output.close(); } catch (IOException logOrIgnore) {}
                if (input != null) try { input.close(); } catch (IOException logOrIgnore) {}
            }
        } else {
            // No image found, send HTTP 404.
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    } catch (SQLException e) {
        throw new ServletException("Something failed at SQL/DB level.", e);
    }   catch (ClassNotFoundException ex) {
            Logger.getLogger(ImageServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        if (resultSet != null) try { resultSet.close(); } catch (SQLException logOrIgnore) {}
        if (statement != null) try { statement.close(); } catch (SQLException logOrIgnore) {}
        if (connection != null) try { connection.close(); } catch (SQLException logOrIgnore) {}
    }
}

    // Helpers (can be refactored to public utility class) ----------------------------------------

    private static void close(Closeable resource) {
        if (resource != null) {
            try {
                resource.close();
            } catch (IOException e) {
                // Do your thing with the exception. Print it, log it or mail it.
                e.printStackTrace();
            }
        }
    }

}