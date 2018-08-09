package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Marca;
import unae.lp3.model.Modelo;
import unae.lp3.service.IMarcasService;
import unae.lp3.service.IModelosService;

@Controller
@RequestMapping(value = "/modelos")
public class ModelosController {
	
	@Autowired
	private IModelosService serviceModelos;
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	@GetMapping(value = "/index")
	public String mostrarIndex(Model model) {
		List<Modelo> listaModelos = serviceModelos.buscarTodas();
		model.addAttribute("modelos", listaModelos);
		return "modelos/listModelos";
	}
	
	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Modelo modelo, Model model) {
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		return "modelos/formModelo";
	}
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Modelo modelo, BindingResult result, Model model,
			RedirectAttributes attributes) {
		// Insertamos la marca
		System.out.println(modelo.getMarca());
		serviceModelos.guardar(modelo);
		attributes.addFlashAttribute("msg", "Los datos del modelo fueron guardados!");
		return "redirect:/modelos/index";
	}
	
	@GetMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idModelo, RedirectAttributes attributes) {
		serviceModelos.eliminar(idModelo);
		attributes.addFlashAttribute("msg", "El modelo fue eliminado!.");
		return "redirect:/modelos/index";
	}

	@GetMapping(value = "/editar/{id}")
	public String editar(@PathVariable("id") int idModelo, Model model) {
		Modelo modelo = serviceModelos.buscarPorId(idModelo);
		model.addAttribute("modelo", modelo);
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		return "modelos/formModelo";
	}

	
}
