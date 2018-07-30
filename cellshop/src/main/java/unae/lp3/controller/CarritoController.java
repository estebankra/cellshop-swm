package unae.lp3.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Carrito;
import unae.lp3.model.Marca;
import unae.lp3.model.Producto;
import unae.lp3.model.Usuario;
import unae.lp3.service.ICarritosService;
import unae.lp3.service.IProductosService;
import unae.lp3.service.IUsuariosService;

@Controller
@RequestMapping(value = "/carrito")
public class CarritoController {
	
	@Autowired
	private ICarritosService serviceCarritos;
	
	@Autowired
	private IUsuariosService serviceUsuarios;
	
	@Autowired
	private IProductosService serviceProductos;
	
	@RequestMapping(value = "{username}/list")
	public String listarCarrito( @PathVariable("username") String Username, Model model, RedirectAttributes attributes) {
		List<Carrito> listaProdCarrito = serviceCarritos.buscarCarritoPorUsuario(Username);
		model.addAttribute("carritoUsu", listaProdCarrito);
		return "carrito/listCarrito";
	}
	
	@RequestMapping(value = "{username}/agregar/{prod_id}")
	public String agregarProductoACarrito( @ModelAttribute Carrito carrito, @PathVariable("username") String Username, @PathVariable("prod_id") int IdProducto, Model model, RedirectAttributes attributes) {

		carrito.setFecha(new Date());
		Usuario usuarioLog = serviceUsuarios.buscarPorUsuario(Username);
		Producto productoSelecc = serviceProductos.buscarPorId(IdProducto);
		carrito.setUsuario(usuarioLog);
		carrito.setProducto(productoSelecc);
		carrito.setPrecio(productoSelecc.getPrecio());
		
		attributes.addFlashAttribute("msg", "Producto agregado al carrito!");
		serviceCarritos.guardar(carrito);

		return "redirect:/carrito/{username}/list";
	}
	
	@GetMapping(value = "{username}/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idCarrito, RedirectAttributes attributes) {
		serviceCarritos.eliminar(idCarrito);
		attributes.addFlashAttribute("msg", "El producto fue eliminado del carrito!.");
		return "redirect:/carrito/{username}/list";
	}
	
}