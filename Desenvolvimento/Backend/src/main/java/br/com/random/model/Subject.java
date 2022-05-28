package br.com.random.model;

import java.util.List;
import java.util.Objects;

import org.springframework.data.annotation.Id;

public class Subject {
	
	@Id
	private String id;
	private List<Lesson> lessons;

	public String getId() {
		return id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, lessons);
	}
	
	public List<Lesson> getLessons() {
		return lessons;
	}

	public void setLessons(List<Lesson> lessons) {
		this.lessons = lessons;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Subject other = (Subject) obj;
		return Objects.equals(id, other.id) && Objects.equals(lessons, other.lessons);
	}
}
