package unae.lp3.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import unae.lp3.model.Carrito;
import unae.lp3.service.ICarritosService;

@Controller
public class HomeController {
	
	@Autowired
	private ICarritosService serviceCarritos;
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		return "index";

	}
	
	@GetMapping(value = "/logout/{username}")
	public String logout(@PathVariable("username") String UserLog, HttpServletRequest request) {
		
		List<Carrito> listaProdCarrito = serviceCarritos.buscarCarritoPorUsuario(UserLog);

		for (Carrito p : listaProdCarrito) {
			serviceCarritos.eliminar(p.getCarrito_id());
		}
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		return "redirect:/";
	}
	
	
}
