package br.com.random.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import br.com.random.model.Lesson;

public interface LessonRepository extends MongoRepository<Lesson, String>{

}
