package com.essat.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.essat.model.Demande;

public interface IDemandeDAO extends JpaRepository<Demande, Long>,CrudRepository<Demande,Long> {
//	  @Modifying
//	    @Query(value = "insert into Demande (etat,deProjet) values :et,:id", nativeQuery = true)
//	    @Transactional
//	    public void insertD(@Param("et")String name,@Param("id")Long id);
}
