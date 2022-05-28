package br.com.random.model;

import java.util.Objects;

import org.springframework.data.annotation.Id;

public class User {
	
	@Id
	private String id;
	private String email;
	private String name;
	private String password;
	private String institution;
	private UserType type;
	
	

	public User(String id, String email, String name, String password, String institution, int type) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.password = password;
		this.institution = institution;
		this.type = UserType.values()[type];
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
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

	@Override
	public int hashCode() {
		return Objects.hash(email, id, institution, name, password);
	}
	
	public UserType getType() {
		return type;
	}

	public void setType(UserType type) {
		this.type = type;
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
