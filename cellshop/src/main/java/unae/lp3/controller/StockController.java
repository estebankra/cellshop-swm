package unae.lp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import unae.lp3.model.Producto;
import unae.lp3.service.IProductosService;

@Controller
@RequestMapping(value = "/stock")
public class StockController {
	
	@Autowired
	private IProductosService serviceProductos;
	
	@GetMapping(value = "/index")
	public String mostrarIndex(Model model) {
		List<Producto> listaProductos = serviceProductos.buscarTodas();
		model.addAttribute("productos", listaProductos);
		return "productos/listStock";
	}
	
	@GetMapping(value = "/agregar/{id}")
	public String agregarStock(@PathVariable("id") int idProducto, Model model) {
		
		//Actualizamos el stock del producto
		Producto prodPed =  serviceProductos.buscarPorId(idProducto);
		prodPed.setStock(prodPed.getStock() + 1);
		serviceProductos.guardar(prodPed);
		
		return "redirect:/stock/index";

	}
	
	@GetMapping(value = "/restar/{id}")
	public String restarStock(@PathVariable("id") int idProducto, Model model) {
		
		//Actualizamos el stock del producto
		Producto prodPed =  serviceProductos.buscarPorId(idProducto);
		prodPed.setStock(prodPed.getStock() - 1);
		serviceProductos.guardar(prodPed);
		
		return "redirect:/stock/index";

	}
	
	

	
}