package com.essat.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Demande implements Serializable {
	
	@Id @GeneratedValue
	private	Long idDemande ; 
	private String  etat    ; 
	
	
	@ManyToOne
	@JoinColumn(name ="idProjet")
	private Projet deProjet ;
	

	


	public Long getIdDemande() {
		return idDemande;
	}


	public void setIdDemande(Long idDemande) {
		this.idDemande = idDemande;
	}


	public String getEtat() {
		return etat;
	}


	public void setEtat(String etat) {
		this.etat = etat;
	}


	public Projet getProjet() {
		return deProjet;
	}


	public void setProjet(Projet projet) {
		this.deProjet = projet;
	}


	


	public Demande(Long idDemande, String etat, Projet projet) {
		super();
		this.idDemande = idDemande;
		this.etat = etat;
		this.deProjet = projet;
		
	}


	public Demande() {
		super();
	}
	
	
	

}
