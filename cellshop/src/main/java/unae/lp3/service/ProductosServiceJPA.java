package unae.lp3.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import unae.lp3.model.Modelo;
import unae.lp3.model.Producto;
import unae.lp3.repository.ModelosRepository;
import unae.lp3.repository.ProductosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class ProductosServiceJPA implements IProductosService {

	// Inyectamos una instancia desde nuestro Root ApplicationContext.
	@Autowired
	private ProductosRepository productosRepo;

	@Autowired
	private ModelosRepository serviceModelos;

	@Override
	public void guardar(Producto producto) {
		productosRepo.save(producto);
	}

	@Override
	public List<Producto> buscarTodas() {
		return productosRepo.findAll();
	}

	@Override
	public List<Producto> buscarPorStock() {
		List<Producto> productos = null;
		productos = new LinkedList<>();
		List<Producto> listaProductos = productosRepo.findByNewProd();
		for (Producto p : listaProductos) {
			if (p.getStock() != 0) {
				productos.add(p);
			}
		}
		return productos;
	}

	@Override
	public void eliminar(int idProducto) {
		productosRepo.deleteById(idProducto);
	}

	@Override
	public List<Producto> buscarPorIdMarca(int idMarca) {
		List<Producto> productos = null;
		// Buscamos en la tabla de horarios, [agrupando por idPelicula]
		List<Modelo> listaModelos = serviceModelos.findByIdMarca(idMarca);
		productos = new LinkedList<>();

		List<Producto> listaProductos = productosRepo.findAll();

		// Formamos la lista final de Modelos que regresaremos.
		for (Modelo h : listaModelos) {
			for (Producto p : listaProductos) {
				if (h.getModel_id() == p.getModelo().getModel_id()) {
					if (p.getStock() != 0) {
						productos.add(p);
					}
				}
			}
		}
		return productos;
	}

	@Override
	public Producto buscarPorId(int idProducto) {
		Optional<Producto> optional = productosRepo.findById(idProducto);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
}
