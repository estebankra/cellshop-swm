package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import unae.lp3.model.Almacenamiento;
import unae.lp3.model.Color;
import unae.lp3.model.Marca;
import unae.lp3.model.Memoria;
import unae.lp3.model.Modelo;
import unae.lp3.model.Producto;
import unae.lp3.service.IAlmacenamientosService;
import unae.lp3.service.IColoresService;
import unae.lp3.service.IMarcasService;
import unae.lp3.service.IMemoriasService;
import unae.lp3.service.IModelosService;
import unae.lp3.service.IProductosService;

@Controller
@RequestMapping(value = "/productos")
public class ProductosController {
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	@Autowired
	private IProductosService serviceProductos;
	
	@Autowired
	private IModelosService serviceModelos;
	
	@Autowired
	private IMemoriasService serviceMemorias;
	
	@Autowired
	private IColoresService serviceColores;
	
	@Autowired
	private IAlmacenamientosService serviceAlmacenamientos;
	
	@RequestMapping(value = "/lists", method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		List<Producto> listaProductos = serviceProductos.buscarPorStock();
		model.addAttribute("productos", listaProductos);
		return "productos/listClientProductos";

	}
	
	@RequestMapping(value = "/lists/{marca_id}")
	public String filtrarPorMarca(@PathVariable("marca_id") int idMarca, Model model) {
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		Marca marcaSelec = serviceMarcas.buscarPorId(idMarca);
		model.addAttribute("marcaSele", marcaSelec);
		
		List<Producto> listaProductos = serviceProductos.buscarPorIdMarca(idMarca);
		model.addAttribute("productos", listaProductos);
		
		return "productos/listClientProductos";
	}
	
	@RequestMapping(value = "/detalle/{prod_id}")
	public String detallesProducto(@PathVariable("prod_id") int idProducto, Model model) {
		Producto productoSelecc = serviceProductos.buscarPorId(idProducto);
		model.addAttribute("produSele", productoSelecc);
		
		return "productos/detProducto";
	}
	
	@GetMapping(value = "/index")
	public String mostrarIndex(Model model) {
		List<Producto> listaProductos = serviceProductos.buscarTodas();
		model.addAttribute("productos", listaProductos);
		return "productos/listAdmProductos";
	}
	
	@GetMapping(value = "/nuevo")
	public String crear(@ModelAttribute Producto producto, Model model) {
		List<Modelo> listaModelos = serviceModelos.buscarTodas();
		model.addAttribute("modelos", listaModelos);
		List<Almacenamiento> listaAlmacenamientos = serviceAlmacenamientos.buscarTodas();
		model.addAttribute("almacenamientos", listaAlmacenamientos);
		List<Color> listaColores = serviceColores.buscarTodas();
		model.addAttribute("colores", listaColores);
		List<Memoria> listaMemorias = serviceMemorias.buscarTodas();
		model.addAttribute("memorias", listaMemorias);
		return "productos/formProducto";
	}
	
	@PostMapping(value = "/guardar")
	public String guardar(@ModelAttribute Producto producto, BindingResult result, Model model,
			RedirectAttributes attributes) {
		// Insertamos el producto
		serviceProductos.guardar(producto);
		attributes.addFlashAttribute("msg", "Los datos del producto fueron guardados!");
		return "redirect:/productos/index";
	}
	
	@GetMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable("id") int idProducto, RedirectAttributes attributes) {
		serviceProductos.eliminar(idProducto);
		attributes.addFlashAttribute("msg", "El producto fue eliminado!.");
		return "redirect:/productos/index";
	}

	@GetMapping(value = "/editar/{id}")
	public String editar(@PathVariable("id") int idProducto, Model model) {
		List<Modelo> listaModelos = serviceModelos.buscarTodas();
		model.addAttribute("modelos", listaModelos);
		List<Almacenamiento> listaAlmacenamientos = serviceAlmacenamientos.buscarTodas();
		model.addAttribute("almacenamientos", listaAlmacenamientos);
		List<Color> listaColores = serviceColores.buscarTodas();
		model.addAttribute("colores", listaColores);
		List<Memoria> listaMemorias = serviceMemorias.buscarTodas();
		model.addAttribute("memorias", listaMemorias);
		Producto producto = serviceProductos.buscarPorId(idProducto);
		model.addAttribute("producto", producto);
		return "productos/formProducto";
	}

	
}
