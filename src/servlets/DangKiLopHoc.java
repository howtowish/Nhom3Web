package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DangKiLopHoc")
public class DangKiLopHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DangKiLopHoc() {
        super();
    }

    public void init(ServletConfig config) throws ServletException {
  		super.init(config);

  		
  		try 
  		{
  			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  		}
  		catch(ClassNotFoundException e)
  		{
  			throw new ServletException(e);
  		}
  	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String lophoc = request.getParameter("lophoc");
		String message = "";
		
		Connection connec = null;
		try {
				String url = "jdbc:sqlserver://localhost:1433;instance=MAYTINH-E0OC46K;DatabaseName=TTTH;";
				String usernamesql = "HQTCSDL";
				String passwordsql = "hieu123";
				String query = "INSERT INTO dbo.LopHocVien( MaLop, TaiKhoan ) VALUES (?, ?)";
				connec = DriverManager.getConnection(url, usernamesql, passwordsql);
				
				String query2 = "SELECT TenDangNhap, MatKhau FROM dbo.TaiKhoan WHERE TenDangNhap LIKE ? ";
				connec = DriverManager.getConnection(url, usernamesql, passwordsql);
				PreparedStatement ps = connec.prepareStatement(query2);
				ps.setString(1, userName);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
			{
				if(rs.getString(1).equals(userName) && rs.getString(2).equals(userPassword) )
				{
					try
					{
					PreparedStatement ppst = connec.prepareStatement(query);
					ppst.setString(1,lophoc);
					ppst.setString(2,userName);
					ppst.executeUpdate();
					message="Đăng kí lớp học thành công. Đăng nhập và xem danh sách lớp học";
					}
					catch (SQLException e) {
						message="Lớp học nà đã có trong danh sách của bạn";
						throw new ServletException(e);
					}
				}
				else
				{
					message="Tên đăng nhập hoặc mật khẩu bạn nhập không đúng!";
				}
				
			}
				request.setAttribute("message2", message);
				request.getRequestDispatcher("LichKhaiGiang").forward(request, response);
		}
		catch (SQLException e) {
			throw new ServletException(e);
		}
		finally
		{
			try {
				if(connec != null)
					connec.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
	}

}
