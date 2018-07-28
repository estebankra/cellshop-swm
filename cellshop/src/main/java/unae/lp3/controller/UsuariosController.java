package unae.lp3.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.util.Utileria;
import unae.lp3.model.Usuario;
import unae.lp3.service.IUsuariosService;

@Controller
@RequestMapping(value = "/usuarios")
public class UsuariosController {

	@Autowired
	private IUsuariosService serviceUsuarios;

	@GetMapping(value = "/cuentas")
	public String mostrarIndex(Model model) {
		List<Usuario> listaClientes = serviceUsuarios.buscarTodosLosClientes();
		model.addAttribute("clientes", listaClientes);
		return "clientes/listClientes";
	}

	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Usuario usuario) {
		return "usuarios/formUsuario";
	}

	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Usuario usuario, BindingResult result, Model model,
			RedirectAttributes attributes) {

		if (!usuario.getContrasena().equals(usuario.getPerfil())) {
			attributes.addFlashAttribute("msg", "Los campos de contraseña no coinciden!");
			return "redirect:/usuarios/nuevo";
		} else {
			usuario.setContrasena(Utileria.getMD5(usuario.getContrasena()));
			if (usuario.getEmail().equals(usuario.getUsuario())) {
				attributes.addFlashAttribute("msg", "El nombre de usuario y correo electrónico no pueden repetirse!");
				return "redirect:/usuarios/nuevo";
			} else {
				usuario.setPerfil("cliente");
				// Insertamos el usuario
				serviceUsuarios.guardar(usuario);
				attributes.addFlashAttribute("msg", "Has creado tu cuenta con éxito. ¡Inicia sesión!");
				return "redirect:/login/index";
			}
		}
	}
	
	@PostMapping(value = "/editar/{username}")
	public String editar(@ModelAttribute Usuario usuario, BindingResult result, Model model,
			RedirectAttributes attributes) {
		if (!usuario.getContrasena().equals(usuario.getPerfil())) {
			attributes.addFlashAttribute("msg", "Los campos de contraseña no coinciden!");
			return "redirect:/perfil/{username}";
		} else {
			usuario.setContrasena(Utileria.getMD5(usuario.getContrasena()));
			if (usuario.getEmail().equals(usuario.getUsuario())) {
				attributes.addFlashAttribute("msg", "El nombre de usuario y correo electrónico no pueden repetirse!");
				return "redirect:/perfil/{username}";
			} else {
				usuario.setPerfil("cliente");
				// Insertamos el usuario
				serviceUsuarios.guardar(usuario);
				attributes.addFlashAttribute("msg", "Has creado tu cuenta con éxito. ¡Inicia sesión!");
				return "redirect:/login/index";
			}
		}
	}

	@GetMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idUsuario, RedirectAttributes attributes) {
		serviceUsuarios.eliminar(idUsuario);
		attributes.addFlashAttribute("msg", "El usuario fue eliminado!.");
		return "redirect:/usuarios/cuentas";
	}

	/**
	 * Personalizamos el Data Binding para todas las propiedades de tipo Date
	 * 
	 * @param webDataBinder
	 */
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
