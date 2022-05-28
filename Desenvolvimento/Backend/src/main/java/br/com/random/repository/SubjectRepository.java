package br.com.random.repository;

import org.springframework.stereotype.Repository;

import br.com.random.model.Subject;

import org.springframework.data.mongodb.repository.MongoRepository;

@Repository
public interface SubjectRepository extends MongoRepository<Subject, String>{
	
}
