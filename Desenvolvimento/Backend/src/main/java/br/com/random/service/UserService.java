package br.com.random.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.random.model.User;
import br.com.random.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public User create(User user) {
		if (
			user.getPassword().length() < 8
			|| user.getEmail() == null
			|| user.getName() == null
			|| user.getPassword() == null
			|| user.getInstitution() == null
			|| !User.TYPES.contains(user.getType())
		) {
			return null;
		}
		
		return userRepository.insert(user);
	}
	
	public User update(User user) {
		user.setEmail(user.getEmail());
		user.setInstitution(user.getInstitution());
		user.setName(user.getName());
		user.setPassword(user.getPassword());
		return userRepository.save(user);
	}	
	
	public void delete(String id) {
		userRepository.deleteById(id);
	}
	
	public User findById(String id) {
		Optional<User> user = userRepository.findById(id);
		
		if (user.isEmpty()) {
			return null;
		}
		
		return user.get();
	}
	
	public List<User> findAll() {
		return userRepository.findAll();
	}
}
