package json.se;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.labs.repackaged.org.json.JSONWriter;

public class JSONHelper {
	
	//Constant variable fields 
	public static final String LAST_NAME = "lastName";
	public static final String FIRST_NAME = "lastName";
	public static final String SCHOOL_ID = "schoolId";
	public static final String STATE = "state";
	
	private String firstName;
	private String lastName;
	private String schoolId;
	

	//the entity Object as parameter is the google service object to access the data store 
	public JSONHelper(Entity student){
		
		this.firstName = student.getProperty(LAST_NAME).toString();
		this.lastName = student.getProperty(LAST_NAME).toString();
		this.schoolId = student.getProperty(SCHOOL_ID).toString();
	}
	
	//Generation of the JSON file (configuration)
	public static void generateJSON(JSONHelper helper, JSONWriter writer){
		try{
			writer.object();
			if (helper == null){
				writer.key(STATE).value(false);
			}else{
				writer.key(STATE).value(true);
				writer.key(FIRST_NAME).value(helper.getFirstName());
				writer.key(LAST_NAME).value(helper.getLastName());
				writer.key(SCHOOL_ID).value(helper.getSchoolId());
			}
			writer.endObject();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getSchoolId() {
		return schoolId;
	}

	public void setSchoolId(String schoolId) {
		this.schoolId = schoolId;
	}
	
	

}
