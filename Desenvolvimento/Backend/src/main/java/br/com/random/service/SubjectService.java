package br.com.random.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.random.model.Subject;
import br.com.random.repository.SubjectRepository;


@Service
public class SubjectService {
	
	@Autowired
	private SubjectRepository subjectRepository;
	
	public Subject create(Subject subject) {
		return subjectRepository.insert(subject);
	}
	
	public void delete(String id) {
		subjectRepository.deleteById(id);
	}
	
	public Optional<Subject> findById(String id) {
		return subjectRepository.findById(id);
	}
	
	public List<Subject> findAll() {
		return subjectRepository.findAll();
	}
	
	
}
