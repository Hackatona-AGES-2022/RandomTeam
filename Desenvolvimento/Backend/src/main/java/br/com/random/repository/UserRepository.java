package br.com.random.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import br.com.random.model.User;

@Repository
public interface UserRepository extends MongoRepository<User, String>{
}
