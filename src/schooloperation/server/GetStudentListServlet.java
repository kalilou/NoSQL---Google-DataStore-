package schooloperation.server;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import json.se.JSONHelper;
import utilities.DataStoreHelp;

import com.google.appengine.labs.repackaged.org.json.JSONWriter;

public class GetStudentListServlet extends HttpServlet{

	/**
	 * Class helper for the communication between the device and the backend 
	 */
	
	private static final long serialVersionUID = 1L;
	private static final String ARRAY = "arrayStudent";
	
	//google service DataStore 
	DataStoreHelp helper = new DataStoreHelp();
	
	public GetStudentListServlet(){
		super();
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		JSONWriter writer = new JSONWriter(resp.getWriter());
		
		List<JSONHelper> list = new ArrayList<JSONHelper>();
		
		try{
			list = helper.getStudent();
			int size = list.size();
			writer.object();
			writer.key(ARRAY).array();
			
			for (int i=0;i<size;i++){
				
				JSONHelper jsonHelper = list.get(i);
				
				JSONHelper.generateJSON(jsonHelper, writer);
				
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		resp.sendRedirect("/viewstudent.jsp");
	}
	
	
       public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		JSONWriter writer = new JSONWriter(resp.getWriter());
		
		List<JSONHelper> list = new ArrayList<JSONHelper>();
		
		try{
			list = helper.getStudent();
			int size = list.size();
			writer.object();
			writer.key(ARRAY).array();
			
			for (int i=0;i<size;i++){
				
				JSONHelper jsonHelper = list.get(i);
				
				JSONHelper.generateJSON(jsonHelper, writer);
				
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		resp.sendRedirect("/viewstudent.jsp");
	}

}
