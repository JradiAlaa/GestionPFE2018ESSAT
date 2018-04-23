package com.essat.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.essat.model.Projet;

public interface IProjetDAO extends  JpaRepository<Projet, Long>{


//	@Query("select u from Projet u where u.sujet_projet = ?1")
//	   public List<Projet> findAllBySujetProjet( String uje) ; 
//	@Query("insert into  projet(idEns) values :idE")
//	public Projet addidEns(@Param("idE") Long idE) ; 
	@Query("select p from Projet p where p.userProjet.idUser = :id")
	public List<Projet> getAllProjetByidUser(@Param("id") Long id);
    @Query("select p from Projet p where p.etatProjet= :etat")
    public List<Projet> getAllProjetByEtat(@Param("etat") String etat);
    @Modifying
    @Query("update Projet p set p.etatProjet = :etat where p.idProjet = :id")
	public void updateProjetByEtat(@Param("etat") String etat,@Param("id")Long id);
    @Query("select count(*) from Projet p where p.etatProjet= 1")
    public int  getnbrProjet();
	@Query("select u from Projet u where u.sujetProjet LIKE %:nom% and  u.catProjet LIKE %:niv%")
	   public List<Projet> findAllProjetByNomANDNiveau(@Param("nom") String nom,@Param("niv") String niv) ; 
	@Query("select u from Projet u where u.etatProjet= :etat ORDER BY dateAjoutProjet")
	 public List<Projet> findAllProjetByDateAjout(@Param("etat") String etat) ; 
	@Query("select u from Projet u where u.sujetProjet LIKE %:nom% and  u.catProjet LIKE %:cat% and  u.niveauProjet LIKE %:niv% and u.etatProjet= :etat ORDER BY dateAjoutProjet")
	   public List<Projet> findAllProjetByNomANDNiveauANDCat(@Param("nom") String nom,@Param("niv") String niv,@Param("cat") String cat,@Param("etat") String etat) ; 
   

	

	
}
