package com.example.springwebsite.service.repository;

import com.example.springwebsite.beans.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<Users, Integer> {
}
