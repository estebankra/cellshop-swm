package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.model.Marca;
import unae.lp3.model.Modelo;
import unae.lp3.model.Producto;
import unae.lp3.service.IMarcasService;
import unae.lp3.service.IModelosService;
import unae.lp3.service.IProductosService;

@Controller
@RequestMapping(value = "/modelos")
public class ProductosController {
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	@Autowired
	private IProductosService serviceProductos;
	
	@RequestMapping(value = "/lists", method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		List<Producto> listaProductos = serviceProductos.buscarPorStock();
		model.addAttribute("productos", listaProductos);
		return "productos/listProductos";

	}
	
	@RequestMapping(value = "/lists/{marca_id}")
	public String filtrarPorMarca(@PathVariable("marca_id") int idMarca, Model model) {
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		Marca marcaSelec = serviceMarcas.buscarPorId(idMarca);
		model.addAttribute("marcaSele", marcaSelec);
		
		List<Producto> listaProductos = serviceProductos.buscarPorIdMarca(idMarca);
		model.addAttribute("productos", listaProductos);
		
		return "productos/listProductos";
	}
	
	@RequestMapping(value = "/detalle/{prod_id}")
	public String detallesProducto(@PathVariable("prod_id") int idProducto, Model model) {
		Producto productoSelecc = serviceProductos.buscarPorId(idProducto);
		model.addAttribute("produSele", productoSelecc);
		
		return "productos/detProducto";
	}

	
}
