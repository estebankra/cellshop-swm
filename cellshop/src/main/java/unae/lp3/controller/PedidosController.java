package unae.lp3.controller;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import unae.lp3.model.Carrito;
import unae.lp3.model.Pedido;
import unae.lp3.model.Pedido_Detalle;
import unae.lp3.model.Usuario;
import unae.lp3.service.ICarritosService;
import unae.lp3.service.IPedidosDetalleService;
import unae.lp3.service.IPedidosService;
import unae.lp3.service.IProductosService;
import unae.lp3.service.IUsuariosService;

@Controller
@RequestMapping(value = "/pedidos")
public class PedidosController {

	@Autowired
	private IPedidosService servicePedidos;
	
	@Autowired
	private IUsuariosService serviceUsuarios;
	
	@Autowired
	private IPedidosDetalleService servicePedidosDetalle;
	
	@Autowired
	private ICarritosService serviceCarritos;

	@RequestMapping(value = "/{usu_name}")
	public String obtenerPedidosPorUsuario(@PathVariable("usu_name") String Usu_Name, Model model) {
		int idUsuarioLog = serviceUsuarios.ObtenerIdPorNombre(Usu_Name);
		List<Pedido> listaPedidos = servicePedidos.buscarPorIdUsuario(idUsuarioLog);
		model.addAttribute("pedidos", listaPedidos);
		return "pedidos/listPedidos";
	}
	
	@RequestMapping(value = "/{usu_name}/detalles/{peddet_id}")
	public String obtenerDetallesdePedido(@PathVariable("peddet_id") int IdPedido, Model model) {
		List<Pedido_Detalle> listaDetallesPedido = servicePedidosDetalle.buscarPorIdPedido(IdPedido);
		model.addAttribute("pedidoDetalles", listaDetallesPedido);
		return "pedidos/listDetallesPed";
	}
	
	@RequestMapping(value = "/carrito/{username}/completar/{id_usuario}")
	public String completarPedido(@ModelAttribute Pedido pedido, @ModelAttribute Pedido_Detalle peddet, @PathVariable("id_usuario") int IdUsuario, Model model) {
		
		pedido.setFecha(new Date());
		Usuario usuario = serviceUsuarios.buscarPorId(IdUsuario);
		pedido.setUsuario(usuario);
		float sumaTotalCarrito = serviceCarritos.obtenerSumaTotal(usuario.getUsuario());
		
		pedido.setMonto(sumaTotalCarrito);
		servicePedidos.guardar(pedido);

		
		List<Carrito> listaProdCarrito = serviceCarritos.buscarCarritoPorUsuario(usuario.getUsuario());
		int id_peddet = peddet.getPeddet_id();

		for (Carrito p : listaProdCarrito) {
			peddet.setPeddet_id(id_peddet + 1);
			peddet.setPedido(pedido);
			peddet.setPrecio(p.getPrecio());
			peddet.setProducto(p.getProducto());
			servicePedidosDetalle.guardar(peddet);
		}

		return "pedidos/listDetallesPed";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
