package br.com.random.service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Service;

import br.com.random.model.User;

@Service
public class UserServices {
	
	private final AtomicLong counter = new AtomicLong();
	
	public User create(User user) {
		return user;
	}
	
	public User update(User user) {
		return user;
	}	
	
	public void delete(String id) {
		
	}
	
	public User findById(String id) {
		User user = new User();
		user.setId(counter.incrementAndGet());
		user.setName("Leandro");
		user.setEmail("Costa");
		user.setInstitution("Julio de Castilhos");
		return user;
	}
	
	public List<User> findAll() {
		List<User> users = new ArrayList<User>();
		for (int i = 0; i < 8; i++) {
			User user = mockUser(i);
			users.add(user);			
		}
		return users;
	}

	private User mockUser(int i) {
		User user = new User();
		user.setId(counter.incrementAndGet());
		user.setName("User name " + i);
		user.setEmail("User email " + i);
		user.setInstitution("User Institution " + i);
		return user;
	}
}
