package unae.lp3.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import unae.lp3.model.Pedido;
import unae.lp3.service.IPedidosService;
import unae.lp3.service.IUsuariosService;

@Controller
@RequestMapping(value = "/pedidos")
public class PedidosController {

	@Autowired
	private IPedidosService servicePedidos;
	
	@Autowired
	private IUsuariosService serviceUsuarios;

	@RequestMapping(value = "/{usu_name}")
	public String obtenerPedidosPorUsuario(@PathVariable("usu_name") String Usu_Name, Model model) {
		int idUsuarioLog = serviceUsuarios.ObtenerIdPorNombre(Usu_Name);
		List<Pedido> listaPedidos = servicePedidos.buscarPorIdUsuario(idUsuarioLog);
		model.addAttribute("pedidos", listaPedidos);
		return "pedidos/listPedidos";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
