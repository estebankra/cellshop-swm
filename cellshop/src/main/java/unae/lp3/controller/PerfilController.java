package unae.lp3.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import unae.lp3.model.Usuario;
import unae.lp3.service.IUsuariosService;

@Controller
@RequestMapping(value = "/perfil")
public class PerfilController {
	
	@Autowired
	private IUsuariosService serviceUsuarios;
	
	@RequestMapping(value = "/{username}")
	public String obtenerUsuarioLogeado( @PathVariable("username") String UserLog, Model model) {
		Usuario usuarioLog = (Usuario) serviceUsuarios.buscarPorUsuario(UserLog);
		model.addAttribute("usuarioLogueado", usuarioLog);
		return "perfil/mostrarPerfil";
	}
	
	@RequestMapping(value = "/password/{username}")
	public String editarPassword( @PathVariable("username") String UserLog, Model model) {
		Usuario usuarioLog = (Usuario) serviceUsuarios.buscarPorUsuario(UserLog);
		model.addAttribute("usuarioLogueado", usuarioLog);
		return "perfil/cambiarPass";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	
}
