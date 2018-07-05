package unae.lp3.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
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
		return "registro";
	}
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Usuario usuario, BindingResult result, Model model, MultipartFile multiPart, HttpServletRequest request, RedirectAttributes attributes) {	
		
		if (result.hasErrors()){
			System.out.println("Existieron errores");
			return "registro";
		}	

		serviceUsuarios.guardar(usuario);
		attributes.addFlashAttribute("msg", "Los datos del usuario fueron guardados!");
			
		return "redirect:/";		
	}
	
	/**
	 * Personalizamos el Data Binding para todas las propiedades de tipo Date
	 * @param webDataBinder
	 */
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
}
