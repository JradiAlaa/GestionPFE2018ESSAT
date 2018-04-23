package com.essat.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Projet implements Serializable {

	@Id
	@GeneratedValue
	private Long idProjet;
	private String sujetProjet;
	private String descProjet;
	private String dateDebProjet;
	private String dateFinProjet;
	private String catProjet;
	private String niveauProjet;
	private String etatProjet;
	private String dateAjoutProjet;
	@ManyToOne
	@JoinColumn(name="idUser")
	private User userProjet;

	public String getDateAjoutProjet() {
		return dateAjoutProjet;
	}

	public void setDateAjoutProjet(String dateAjoutProjet) {
		this.dateAjoutProjet = dateAjoutProjet;
	}

	public Long getIdProjet() {
		return idProjet;
	}

	public void setIdProjet(Long idProjet) {
		this.idProjet = idProjet;
	}

	public String getSujetProjet() {
		return sujetProjet;
	}

	public void setSujetProjet(String sujetProjet) {
		this.sujetProjet = sujetProjet;
	}

	public String getDescProjet() {
		return descProjet;
	}

	public void setDescProjet(String descProjet) {
		this.descProjet = descProjet;
	}

	public String getDateDebProjet() {
		return dateDebProjet;
	}

	public void setDateDebProjet(String dateDebProjet) {
		this.dateDebProjet = dateDebProjet;
	}

	public String getDateFinProjet() {
		return dateFinProjet;
	}

	public void setDateFinProjet(String dateFinProjet) {
		this.dateFinProjet = dateFinProjet;
	}

	public String getCatProjet() {
		return catProjet;
	}

	public void setCatProjet(String catProjet) {
		this.catProjet = catProjet;
	}

	public String getNiveauProjet() {
		return niveauProjet;
	}

	public void setNiveauProjet(String niveauProjet) {
		this.niveauProjet = niveauProjet;
	}

	public String getEtatProjet() {
		return etatProjet;
	}

	public void setEtatProjet(String etatProjet) {
		this.etatProjet = etatProjet;
	}

	public Projet() {
		super();
	}

	public User getUserProjet() {
		return userProjet;
	}

	public void setUserProjet(User userProjet) {
		this.userProjet = userProjet;
	}

	public Projet(Long idProjet, String sujetProjet, String descProjet, String dateDebProjet, String dateFinProjet,
			String catProjet, String niveauProjet, String etatProjet, String dateAjoutProjet, User userProjet) {
		super();
		this.idProjet = idProjet;
		this.sujetProjet = sujetProjet;
		this.descProjet = descProjet;
		this.dateDebProjet = dateDebProjet;
		this.dateFinProjet = dateFinProjet;
		this.catProjet = catProjet;
		this.niveauProjet = niveauProjet;
		this.etatProjet = etatProjet;
		this.dateAjoutProjet = dateAjoutProjet;
		this.userProjet = userProjet;
	}






}
