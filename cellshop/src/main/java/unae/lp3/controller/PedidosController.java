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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Carrito;
import unae.lp3.model.Pedido;
import unae.lp3.model.Pedido_Detalle;
import unae.lp3.model.Producto;
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
	private IProductosService serviceProductos;
	
	@Autowired
	private IUsuariosService serviceUsuarios;
	
	@Autowired
	private IPedidosDetalleService servicePedidosDetalle;
	
	@Autowired
	private ICarritosService serviceCarritos;
	
	@RequestMapping(value = "/list")
	public String obtenerPedidos( Model model) {
		List<Pedido> listaPedidos = servicePedidos.buscarTodas();
		model.addAttribute("pedidos", listaPedidos);
		return "pedidos/admListPedidos";
	}

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
	
	@RequestMapping(value = "/entrega/{id_pedido}")
	public String completarEntregaPedido(@PathVariable("id_pedido") int idPedido, Model model, RedirectAttributes attributes) {
		
		Pedido pedido = servicePedidos.buscarPorId(idPedido);
		pedido.setFecha_entrega(new Date());
		servicePedidos.guardar(pedido);
		
		attributes.addFlashAttribute("msg", "Entrega confirmada!");
		return "redirect:/pedidos/list";
	}
	
	@RequestMapping(value = "/carrito/{username}/completar")
	public String completarPedido(@ModelAttribute Pedido pedido, @PathVariable("username") String Usu_Name, @ModelAttribute Pedido_Detalle peddet, Model model) {
		pedido.setFecha(new Date());
		Usuario usuario = serviceUsuarios.buscarPorUsuario(Usu_Name);
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
			
			//Actualizamos el stock del producto
			Producto prodPed =  p.getProducto();
			prodPed.setStock(prodPed.getStock() - 1);
			serviceProductos.guardar(prodPed);
			
			peddet.setProducto(prodPed);
			servicePedidosDetalle.guardar(peddet);
			serviceCarritos.eliminar(p.getCarrito_id());
		}
		
		return "redirect:/pedidos/{username}";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
