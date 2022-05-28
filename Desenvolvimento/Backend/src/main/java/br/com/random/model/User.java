package br.com.random.model;

<<<<<<< Updated upstream
=======
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

>>>>>>> Stashed changes
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Objects;

@Document(collection = "users")
public class User {
<<<<<<< Updated upstream
=======
	
	public static int STUDENT = 0;
	public static int TUTOR = 1;
	public static List<Integer> TYPES = Arrays.asList(STUDENT, TUTOR);
	
>>>>>>> Stashed changes
	@Id
	private long id;
	private String email;
	private String name;
	private String password;
	private String institution;
<<<<<<< Updated upstream

=======
	private int type;
>>>>>>> Stashed changes

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getInstitution() {
		return institution;
	}

	public void setInstitution(String institution) {
		this.institution = institution;
	}
<<<<<<< Updated upstream
=======
	
	public int getType() {
		return type;
	}
>>>>>>> Stashed changes

	@Override
	public int hashCode() {
		return Objects.hash(email, id, institution, name, password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(email, other.email) && Objects.equals(id, other.id)
				&& Objects.equals(institution, other.institution) && Objects.equals(name, other.name)
				&& Objects.equals(password, other.password);
	}
}
