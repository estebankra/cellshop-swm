package unae.lp3.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import unae.lp3.model.Marca;
import unae.lp3.service.IMarcasService;

@Controller
public class HomeController {
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	private SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		//List<Marcas> marcas  = serviceMarcas.buscarTodas();
		//model.addAttribute("marcas", marcas);
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		return "index";

	}
	
	@RequestMapping(value = "/formLogin", method=RequestMethod.GET)
	public String mostrarLogin() {			
		return "formLogin";
	}
	
	/**
	 * Metodo para personalizar el Data Binding para los atributos de tipo Date
	 * @param webDataBinder
	 */
	 
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {				
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
}
