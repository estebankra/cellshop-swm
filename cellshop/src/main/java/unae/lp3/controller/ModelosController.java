package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.model.Marca;
import unae.lp3.service.IMarcasService;

@Controller
@RequestMapping(value = "/modelos")
public class ModelosController {
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	@RequestMapping(value = "/stock", method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		return "modelos";

	}
	
}
