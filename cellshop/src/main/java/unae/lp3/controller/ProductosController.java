package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.model.Marca;
import unae.lp3.model.Producto;
import unae.lp3.service.IMarcasService;
import unae.lp3.service.IProductosService;

@Controller
@RequestMapping(value = "/modelos")
public class ProductosController {
	
	@Autowired
	private IMarcasService serviceMarcas;
	
	@Autowired
	private IProductosService serviceProductos;
	
	@RequestMapping(value = "/stock", method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {	
		List<Marca> listaMarcas = serviceMarcas.buscarTodas();
		model.addAttribute("marcas", listaMarcas);
		List<Producto> listaProductos = serviceProductos.buscarTodas();
		model.addAttribute("productos", listaProductos);
		return "productos";

	}
	
}
