package schooloperation.server;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.KeyFactory;

public class TransactionDataServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		
	DatastoreService dataStore = DatastoreServiceFactory.getDatastoreService();
	
	com.google.appengine.api.datastore.Transaction tx = dataStore.beginTransaction();
	
	String firstName   = req.getParameter("firstNameStudent");
	String lastName    = req.getParameter("lastNameStudent");
	String schoolEmail = req.getParameter("schoolEmail");
	
	com.google.appengine.api.datastore.Key studentId = KeyFactory.createKey("EduTech", schoolEmail);
	Entity student = new Entity("Student", studentId);
	student.setProperty("lastName", lastName);
	student.setProperty("firstName", firstName);
	student.setProperty("schoolId", schoolEmail);
	dataStore.put(student);
	tx.commit();
	resp.sendRedirect("/viewstudent.jsp");
	}

}
