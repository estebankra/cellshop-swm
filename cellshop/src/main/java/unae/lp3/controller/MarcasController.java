package unae.lp3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Marca;
import unae.lp3.service.IMarcasService;

@Controller
@RequestMapping(value = "/marcas")
public class MarcasController {
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Marca marca) {		
		return "marcas/formMarca";
	}
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Marca marca, BindingResult result, Model model,
			RedirectAttributes attributes) {
		// Insertamos la marca
		serviceMarcas.guardar(marca);
		attributes.addFlashAttribute("msg", "Los datos de la marca fueron guardados!");
		return "redirect:/";
	}

	
}
