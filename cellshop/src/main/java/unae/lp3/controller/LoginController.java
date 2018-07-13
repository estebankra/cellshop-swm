package unae.lp3.controller;


import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.apache.catalina.realm.GenericPrincipal;


@Controller
@RequestMapping("/login")
public class LoginController {
	
	@GetMapping(value="/index")
	public String mostrarPrincipalAdmin(HttpSession session, Principal principal){		
		if (session.getAttribute("usuario") == null) {		
			GenericPrincipal generic  = (GenericPrincipal) principal;
			// Agregamos a la session el objeto de tipo GenericPrincipal.
			session.setAttribute("usuario", generic); 
		}	
		return "/login/index";		
	}

	
	@GetMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		return "redirect:/";
	}

}