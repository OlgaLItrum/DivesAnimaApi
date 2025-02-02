package com.example.divesanimaapi.repositories;

import com.example.divesanimaapi.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

  Optional<User> findByLoginAndPassword(String login, String password);

  Optional<User> findByLogin(String login);
}
