package schooloperation.server;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletLogin extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unused")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		
		String userName = req.getParameter("login");
		String password = req.getParameter("password");
		
//		if (userName.isEmpty() || password.isEmpty()){
//			req.setAttribute("error", "Password or Username Incorrect");
//			resp.sendRedirect("/index.jsp");
//		}else{
		resp.sendRedirect("/welcomePage.html");
//		}
	}

}
