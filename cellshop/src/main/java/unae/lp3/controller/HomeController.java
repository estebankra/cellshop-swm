package unae.lp3.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		return "home";

	}
	
}
