package unae.lp3.controller;

import java.util.List;

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
	
	@GetMapping(value = "/index")
	public String mostrarIndex(Model model) {
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		return "marcas/listMarcas";
	}
	
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
		return "redirect:/admin/marcas/index";
	}
	
	@GetMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idMarca, RedirectAttributes attributes) {
		serviceMarcas.eliminar(idMarca);
		attributes.addFlashAttribute("msg", "La marca fue eliminada!.");
		return "redirect:/admin/marcas/index";
	}

	@GetMapping(value = "/editar/{id}")
	public String editar(@PathVariable("id") int idMarca, Model model) {
		Marca marca = serviceMarcas.buscarPorId(idMarca);
		model.addAttribute("marca", marca);
		return "marcas/formMarca";
	}

	
}
