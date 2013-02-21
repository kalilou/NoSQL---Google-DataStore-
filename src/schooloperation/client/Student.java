package schooloperation.client;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


@PersistenceCapable
public class Student {
	
	@Persistent
	private String firstName;
	@Persistent
	private String lastName;
	@Persistent
	private String schoolEmail;
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	long studentId;
	
	
	
	

	public Student(String firstName, String lastName, String schoolEmail) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.schoolEmail = schoolEmail;
	}

	//Please note that JDO doesn't use accessors but the application yes
	public String getFirstName() {
		return firstName;
	}
	
	public long getStudentId() {
		return studentId;
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
