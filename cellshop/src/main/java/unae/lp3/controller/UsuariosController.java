package unae.lp3.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Usuario;
import unae.lp3.service.IUsuariosService;

@Controller
@RequestMapping(value = "/usuarios")
public class UsuariosController {
	
	@Autowired
	private IUsuariosService serviceUsuarios;
	
	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Usuario usuario) {		
		return "usuarios/formUsuario";
	}
	
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Usuario usuario, BindingResult result, Model model,
			RedirectAttributes attributes) {
		// Insertamos el usuario
		serviceUsuarios.guardar(usuario);
		attributes.addFlashAttribute("msg", "Los datos de la marca fueron guardados!");
		return "redirect:/";
	}	
	
	/**
	 * Personalizamos el Data Binding para todas las propiedades de tipo Date
	 * @param webDataBinder
	 */
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
}
