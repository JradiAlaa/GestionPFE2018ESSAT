package com.essat.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.essat.dao.IDemandeDAO;
import com.essat.dao.IEnseignantDAO;
import com.essat.dao.IProjetDAO;
import com.essat.dao.IUserDAO;
import com.essat.model.Demande;
import com.essat.model.Enseignent;
import com.essat.model.Projet;
import com.essat.model.User;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
public class ApplicationController {

	@Autowired
	private IUserDAO daoUser;
//	@Autowired
//	private IEnseignantDAO daoEns;
	@Autowired
	private IProjetDAO daoProjet;
	@Autowired
	private IDemandeDAO daoDemende ; 

	// @Autowired
	// private IDemandeDAO daoDemande ;
     

	@RequestMapping(value = "/index")
	public String index1(Model model) {
		model.addAttribute("bo",1);
		model.addAttribute("nbr",daoProjet.getnbrProjet()) ; 
		model.addAttribute("list", daoProjet.findAllProjetByDateAjout("1"));
		
		
		return "index";

	}
	@RequestMapping(value = "/chercher", method = RequestMethod.GET)
	public String update(Model model, @RequestParam(value = "sujetProjet") String nom,
			@RequestParam(value = "niveauProjet") String niv) {
		model.addAttribute("bo", 2);
		List<Projet> p = daoProjet.findAllProjetByNomANDNiveau(nom,niv);
		model.addAttribute("list", p);
		
		return "index";
	}
//	@RequestMapping(value = "/listProjet")
//	public String getAllProjet(Model model) {
//		
//		model.addAttribute("list", daoProjet.findAll());
//		return "list";
//
//	}

	@RequestMapping(value = "/listeProjet")
	public String showProjet(Model model) {
		
		model.addAttribute("bo",1);
		model.addAttribute("cnt",daoProjet.getnbrProjet());
		model.addAttribute("list", daoProjet.getAllProjetByEtat("1"));
		return "listeProjet";
	}
	@RequestMapping(value = "/chercherListe", method = RequestMethod.GET)
	public String cherche(Model model, @RequestParam(value = "sujetProjet") String nom,
			@RequestParam(value = "niveauProjet") String niv,@RequestParam(value = "catProjet") String catProjet) {
		model.addAttribute("bo", 2);
		
		List<Projet> p = daoProjet.findAllProjetByNomANDNiveauANDCat(nom, niv, catProjet, "1");
		model.addAttribute("cnt",p.size());
		model.addAttribute("list", p);
		
		return "listeProjet";
	}
	@RequestMapping(value = "/ensProjet")
	public String projetEnseign(Model model, HttpSession session) {
	//	Long id = (long) 1 ;
		List<Projet> p = daoProjet.getAllProjetByidUser((Long) session.getAttribute("id"));
		
		model.addAttribute("list", p);
		return "ensProjet";
	}
	@RequestMapping(value = "/registerUser")
	public String afficherUser(Model model) {
		// model.addAttribute("list",daoProjet.findAll()) ;
		return "registerUser";
	}
	@RequestMapping(value = "/profil")
	public String profil(Model model) {
		// model.addAttribute("list",daoProjet.findAll()) ;
		return "profil";
	}
	@RequestMapping(value = "/postuler")
	public String postulerProjet(Model model) {
		// model.addAttribute("list",daoProjet.findAll()) ;
		return "postuler";
	}

	@RequestMapping(value = "/addProjet", method = RequestMethod.POST)
	public String addProjet(@ModelAttribute Projet p, Model model) {

		daoProjet.saveAndFlush(p);
		//daoProjet.
		model.addAttribute("list", daoProjet.findAll());
		return "redirect:/demendeProjet";
	}
	@RequestMapping(value = "/upProjet", method = RequestMethod.POST)
	public String upProjet(@ModelAttribute Projet p, Model model) {

		daoProjet.saveAndFlush(p);
	//	model.addAttribute("list", daoProjet.findAll());
		return "redirect:/ensProjet";
	}
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute User u, Model model) {

		daoUser.save(u);
		return "redirect:/listProjet";
	}
	

	@RequestMapping(value = "/postulerEtudiant", method = RequestMethod.POST)
	public String postulerEtudiant(@ModelAttribute Demande d,Model model) {
	     daoDemende.saveAndFlush(d) ; 
		return "listeDE";
	}
	@RequestMapping(value = "/listeDE")
	public String listeDE(Model model) {
	List<Demande> d = 	daoDemende.findAll() ; 
	   
//	List<Enseignent> e = daoEns.findAll();
		model.addAttribute("list12", d);
//		model.addAttribute("list1", e);
		
		 
		return "listeDE";
	}
	@RequestMapping(value = "/appr", method = RequestMethod.POST)
	public String approuverProjet(@RequestParam(value = "idProjet") Long idProjet ,Model model) {
        //    daoProjet.saveAndFlush(p) ; 
		daoProjet.updateProjetByEtat("1",idProjet);
	    List<Projet> p = 	daoProjet.getAllProjetByEtat("0")  ;
		model.addAttribute("list", p);
		
		
		return "redirect:/validerProjet";
	}
	@RequestMapping(value = "/refuser", method = RequestMethod.POST)
	public String refuserProjet(@ModelAttribute Projet p) {
            daoProjet.saveAndFlush(p) ; 
		return "redirect:/validerProjet";
	}
	
	@RequestMapping(value = "/updateProjet", method = RequestMethod.GET)
	public String update(Model model, @RequestParam(value = "idProjet") Long idProjet) {

		Projet p = daoProjet.getOne(idProjet);
//		Enseignent e = p.getEnsProjet() ;
//		Enseignent e1 = daoEns.getOne(e.getIdEns());
		model.addAttribute("list", p);
//		model.addAttribute("list1", e1);
		return "editProjet";
	}

	@RequestMapping(value = "/login")
	public String login(Model model) {
		// model.addAttribute("list",daoProjet.findAll()) ;
		

		return "login";
	}
	
	@RequestMapping(value = "/logout")
	public String logout1(Model model,HttpSession session) {
		// model.addAttribute("list",daoProjet.findAll()) ;
		session.invalidate();

		return "redirect:/login";
	}
	
	@RequestMapping(value = "/verif" ,method = RequestMethod.POST)
	public String verif(Model model,@RequestParam(value="email") String email ,
			@RequestParam(value="password") String password , @RequestParam(value="roleUser") String role,HttpSession session) {
		
	System.out.println(email);
		List<User> listeu =   daoUser.findAll() ; 
		boolean test = false; 
		Long id1=(long) 0;
		  for (User u:listeu) {
			  if(u.getEmailUser().equals(email) && u.getPasswordUser().equals(password) && u.getRoleUser().equals(role))
			  {
				  test = true ; 
				  session.setAttribute("role",role);
				  session.setAttribute("nameUser",u.getNomUser());
				  session.setAttribute("preomUser",u.getPrenomUser());
				  id1=u.getIdUser();
//				  if(u.getRoleUser().equals("Enseignent")) {
//					  Enseignent ens=daoEns.getEnseignantByEMail(u.getEmailUser());
//					  id1=ens.getIdEns();
//				  }
				  
				  session.setAttribute("id",id1);
				  
			  }
			  System.out.println("rrrrrrrrrr="+id1);
		  }
        if(test==true)
		return "redirect:/index";
        else {
        	  session.setAttribute("eureur", "Verifier vous données de connexion???");
        	 return  "redirect:/login";
        }
       
	}
	
	@RequestMapping(value = "/registerEnseignat")
	public String registerEnseignat(Model model) {
		// model.addAttribute("list",daoProjet.findAll()) ;
		return "registerEnseignat";
	}
	

	@RequestMapping(value = "/addEns", method = RequestMethod.POST)
	public String addEns(@ModelAttribute Enseignent ens, Model model) {

//		daoEns.save(ens);
		return "redirect:/listProjet";
	}

	 @RequestMapping(value = "/detProjet", method = RequestMethod.GET)
	 public String detailProjets(Model model) {
	
		 
		    
	 // Projet p= daoProjet.findOne(idProjet);
//	 Projet p = new Projet(1L,"alaa","mario",null,null,null,null,null,null);
//	 model.addAttribute("list", p);
	 return "detProjet";
	 }

	@RequestMapping(value = "/det/{idProjet}", method = RequestMethod.GET)
	public String detailProjet(Model model, @PathVariable(value = "idProjet") Long idProjet) {

		Projet p = daoProjet.getOne(idProjet);
//		Enseignent e = p.getEnsProjet() ;
//		Enseignent e1 = daoEns.getOne(e.getIdEns());
		model.addAttribute("list", p);
//		model.addAttribute("list1", e1);
		return "detProjet";
	}
	
	@RequestMapping(value = "/testDetail/{idProjet}", method = RequestMethod.GET)
	public String testDetail(Model model, @PathVariable(value = "idProjet") Long idProjet,HttpSession session) {

		Projet p = daoProjet.getOne(idProjet);
//		Enseignent e = p.getEnsProjet() ;
//		Enseignent e1 = daoEns.getOne(e.getIdEns());
		model.addAttribute("list", p);
//		model.addAttribute("list1", e1);
		return "testDetail";
	}
	
	@RequestMapping(value = "/testDetail1", method = RequestMethod.GET)
	public String testDetail1(Model model, @RequestParam(value = "idProjet") Long idProjet) {

		Projet p = daoProjet.getOne(idProjet);
		model.addAttribute("list", p);
		return "testDetail";
	}
	
	
	@RequestMapping(value = "/delete/{idProjet}", method = RequestMethod.GET)
	public String deleteProjet(Model model, @PathVariable(value = "idProjet") Long idProjet) {
		Projet p = daoProjet.getOne(idProjet);
		 daoProjet.delete(p);
	
		return "redirect:/ensProjet";
	}
	@RequestMapping(value = "/validerProjet")
	public String affecterProjet(Model model) {
	List<Projet> p = 	daoProjet.getAllProjetByEtat("0")  ; 
	
//	List<Enseignent> e = daoEns.findAll();
		model.addAttribute("list", p);
//		model.addAttribute("list1", e);
		
		 
		return "validerProjet";
	}
	
	@RequestMapping(value = "/demendeProjet")
	public String listeAtt(Model model,HttpSession session) {
	List<Projet> p = 	daoProjet.getAllProjetByidUser((Long)session.getAttribute("id")) ; 
	
		model.addAttribute("list", p);
	
		
		 
		return "demendeProjet";
	}
	@RequestMapping(value = "/demandeProjet/{idProjet}", method = RequestMethod.POST)
	public String demendeProjet(Model model, @PathVariable(value = "idProjet") Long idProjet) {

		Projet p = daoProjet.getOne(idProjet);
//		Enseignent e = p.getEnsProjet() ;
//		Enseignent e1 = daoEns.getOne(e.getIdEns());
	//	Demande d = new Demande(1L,"0",p.getIdProjet());
	//	daoDemende.save() ; 
		model.addAttribute("list", p);
//		model.addAttribute("list1", e1);
		
		return "demandeProjet";
	}
	@RequestMapping(value = "/notif")
	public String notification(Model model,HttpSession session) {
	//List<Projet> p = 	daoProjet.getAllProjetByidEns((Long)session.getAttribute("id")) ; 
		
		model.addAttribute("list", daoProjet.findAll());
	
		
		 
		return "notif";
	}
}
