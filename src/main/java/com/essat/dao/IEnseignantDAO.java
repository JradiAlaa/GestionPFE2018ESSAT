package com.essat.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.essat.model.Enseignent;

public interface IEnseignantDAO extends JpaRepository<Enseignent, Long> {
//	@Query("select e from Enseignent e where e.emailEns = :email")
//	public Enseignent getEnseignantByEMail(@Param("email") String email);

}
