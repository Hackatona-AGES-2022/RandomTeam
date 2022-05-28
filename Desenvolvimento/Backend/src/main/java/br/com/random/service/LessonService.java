package br.com.random.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.random.model.Lesson;
import br.com.random.model.UserType;
import br.com.random.repository.LessonRepository;

@Service
public class LessonService {
	
	@Autowired
	private LessonRepository lessonRepository;
	
	public Lesson create(Lesson lesson) {
		/*
		 * SubjectService subService = new SubjectService(); Optional<Subject> subject =
		 * subService.findById(lesson.getSubject().getId()); if(subject != null) {
		 * return lessonRepository.insert(lesson); }
		 */
		
		if (lesson.getAuthor().getType() != UserType.TUTOR) {
			return null;
		}
		
		return lessonRepository.insert(lesson);
	}
	
	public void delete(String id) {
		lessonRepository.deleteById(id);
	}
	
	public Optional<Lesson> findById(String id) {
		return lessonRepository.findById(id);
	}
	
	public List<Lesson> findAll() {
		return lessonRepository.findAll();
	}
}
