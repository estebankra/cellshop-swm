package unae.lp3.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		return "index";

	}
	
	@GetMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		return "redirect:/";
	}
	
	
}
