package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Almacenamiento;
import unae.lp3.service.IAlmacenamientosService;

@Controller
@RequestMapping(value = "/admin/almacenamientos")
public class AlmacenamientosController {
	
	@Autowired
	private IAlmacenamientosService serviceAlmacenamientos;
	
	@GetMapping(value = "/index")
	public String mostrarIndex(Model model) {
		List<Almacenamiento> listaAlmacenamientos = serviceAlmacenamientos.buscarTodas();
		model.addAttribute("almacenamientos", listaAlmacenamientos);
		return "almacenamientos/listAlmacenamientos";
	}
	
	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Almacenamiento almacenamiento) {		
		return "almacenamientos/formAlmacenamientos";
	}
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Almacenamiento almacenamiento, BindingResult result, Model model,
			RedirectAttributes attributes) {
		// Insertamos el almacenamiento
		serviceAlmacenamientos.guardar(almacenamiento);
		attributes.addFlashAttribute("msg", "Los datos del almacenamiento fueron guardados!");
		return "redirect:/admin/almacenamientos/index";
	}
	
	@GetMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idAlmacenamiento, RedirectAttributes attributes) {
		serviceAlmacenamientos.eliminar(idAlmacenamiento);
		attributes.addFlashAttribute("msg", "El almacenamiento fue eliminada!.");
		return "redirect:/admin/almacenamientos/index";
	}

	@GetMapping(value = "/editar/{id}")
	public String editar(@PathVariable("id") int idAlmacenamiento, Model model) {
		Almacenamiento almacenamiento = serviceAlmacenamientos.buscarPorId(idAlmacenamiento);
		model.addAttribute("almacenamiento", almacenamiento);
		return "almacenamientos/formAlmacenamientos";
	}

	
}
