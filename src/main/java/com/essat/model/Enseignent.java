package com.essat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Enseignent {
	
	
	@Id
	@GeneratedValue
	private Long idEns;

	
	private String nomEns;

	
	private String prenomEns;

	
	private String emailEns;

	
	private String passwordEns;


	public Long getIdEns() {
		return idEns;
	}


	public void setIdEns(Long idEns) {
		this.idEns = idEns;
	}


	public String getNomEns() {
		return nomEns;
	}


	public void setNomEns(String nomEns) {
		this.nomEns = nomEns;
	}


	public String getPrenomEns() {
		return prenomEns;
	}


	public void setPrenomEns(String prenomEns) {
		this.prenomEns = prenomEns;
	}


	public String getEmailEns() {
		return emailEns;
	}


	public void setEmailEns(String emailEns) {
		this.emailEns = emailEns;
	}


	public String getPasswordEns() {
		return passwordEns;
	}


	public void setPasswordEns(String passwordEns) {
		this.passwordEns = passwordEns;
	}


	public Enseignent(Long idEns, String nomEns, String prenomEns, String emailEns, String passwordEns) {
		super();
		this.idEns = idEns;
		this.nomEns = nomEns;
		this.prenomEns = prenomEns;
		this.emailEns = emailEns;
		this.passwordEns = passwordEns;
	}


	public Enseignent() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
