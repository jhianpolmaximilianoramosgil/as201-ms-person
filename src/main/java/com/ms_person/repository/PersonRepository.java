package com.ms_person.repository;

import com.ms_person.model.Person;
import org.springframework.data.r2dbc.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Flux;

@Repository
public interface PersonRepository extends ReactiveCrudRepository<Person, Long> {

    @Query("SELECT * FROM person ORDER BY id DESC")
    Flux<Person> findAll();

    @Query("SELECT * FROM person WHERE active = :active ORDER BY id DESC")
    Flux<Person> findByStatus(@Param("active") boolean active);
    
    @Query("SELECT id,CONCAT(name,', ' ,lastname,', ',id_number) as name,active FROM person where UPPER(name) like UPPER(:term) AND active=true")
    Flux<Person> findByName(@Param("term") String term);
}