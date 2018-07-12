package unae.lp3.controller;


import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class LoginController {
	
	@GetMapping(value="/index")
	public String mostrarPrincipalAdmin(HttpSession session, Principal principal){		
		return "admin/admin";		
	}

	
	@GetMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		return "redirect:/";
	}

}