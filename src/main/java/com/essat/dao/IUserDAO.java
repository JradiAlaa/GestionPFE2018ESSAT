package com.essat.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.essat.model.User;

public interface IUserDAO extends JpaRepository<User, Long> {

}
