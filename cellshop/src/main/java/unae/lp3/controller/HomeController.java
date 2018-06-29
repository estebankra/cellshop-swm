package unae.lp3.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import unae.lp3.model.Marca;
import unae.lp3.service.IMarcasService;

@Controller
public class HomeController {
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		//List<Marcas> marcas  = serviceMarcas.buscarTodas();
		//model.addAttribute("marcas", marcas);
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		return "home";

	}
	
	@RequestMapping(value = "/formLogin", method=RequestMethod.GET)
	public String mostrarLogin() {			
		return "formLogin";
	}
	
}
