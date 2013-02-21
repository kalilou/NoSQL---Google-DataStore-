package schooloperation.client;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Key;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


//The annotation @PersistenceCapable allows the Java class to be stored in the datastore using JDO
@PersistenceCapable
public class Teacher {
	
	//Allows the field to be stored in the datastore
	@Persistent
	private String firstName;
	@Persistent
	private String lastName;
	@Persistent
	private String schoolEmail;
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.INCREMENT)
	private Key teacherId;
	
	
	
	public Teacher(String firstName, String lastName, String schoolEmail) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.schoolEmail = schoolEmail;
	}
	public Key getTeacherId() {
		return teacherId;
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
	public String getSchoolEmail() {
		return schoolEmail;
	}
	public void setSchoolEmail(String schoolEmail) {
		this.schoolEmail = schoolEmail;
	}
	
	
	
}
