package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Memoria;
import unae.lp3.service.IMemoriasService;

@Controller
@RequestMapping(value = "/memorias")
public class MemoriasController {
	
	@Autowired
	private IMemoriasService serviceMemorias;
	
	@GetMapping(value = "/index")
	public String mostrarIndex(Model model) {
		List<Memoria> listaMemorias = serviceMemorias.buscarTodas();
		model.addAttribute("memorias", listaMemorias);
		return "memorias/listMemorias";
	}
	
	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Memoria memoria) {		
		return "memorias/formMemoria";
	}
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Memoria memoria, BindingResult result, Model model,
			RedirectAttributes attributes) {
		// Insertamos la marca
		serviceMemorias.guardar(memoria);
		attributes.addFlashAttribute("msg", "Los datos de la memoria fueron guardados!");
		return "redirect:/memorias/index";
	}
	
	@GetMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idMemoria, RedirectAttributes attributes) {
		serviceMemorias.eliminar(idMemoria);
		attributes.addFlashAttribute("msg", "La memoria fue eliminada!.");
		return "redirect:/memorias/index";
	}

	@GetMapping(value = "/editar/{id}")
	public String editar(@PathVariable("id") int idMemoria, Model model) {
		Memoria memoria = serviceMemorias.buscarPorId(idMemoria);
		model.addAttribute("memoria", memoria);
		return "memorias/formMemoria";
	}

	
}
