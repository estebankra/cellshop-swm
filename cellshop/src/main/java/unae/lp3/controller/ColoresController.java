package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Color;
import unae.lp3.service.IColoresService;

@Controller
@RequestMapping(value = "/colores")
public class ColoresController {
	
	@Autowired
	private IColoresService serviceColores;
	
	@GetMapping(value = "/index")
	public String mostrarIndex(Model model) {
		List<Color> listaColores = serviceColores.buscarTodas();
		model.addAttribute("colores", listaColores);
		return "colores/listColores";
	}
	
	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Color color) {		
		return "colores/formColor";
	}
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Color color, BindingResult result, Model model,
			RedirectAttributes attributes) {
		// Insertamos la marca
		serviceColores.guardar(color);
		attributes.addFlashAttribute("msg", "Los datos del color fueron guardados!");
		return "redirect:/colores/index";
	}
	
	@GetMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idColor, RedirectAttributes attributes) {
		serviceColores.eliminar(idColor);
		attributes.addFlashAttribute("msg", "El color fue eliminado!.");
		return "redirect:/colores/index";
	}

	@GetMapping(value = "/editar/{id}")
	public String editar(@PathVariable("id") int idColor, Model model) {
		Color color = serviceColores.buscarPorId(idColor);
		model.addAttribute("color", color);
		return "colores/formColor";
	}

	
}
