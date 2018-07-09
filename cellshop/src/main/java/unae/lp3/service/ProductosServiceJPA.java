package unae.lp3.service;

import java.util.List;
import java.util.Optional;

import unae.lp3.model.Producto;
import unae.lp3.repository.ProductosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class ProductosServiceJPA implements IProductosService{
	
	// Inyectamos una instancia desde nuestro Root ApplicationContext.
    @Autowired
	private ProductosRepository productosRepo;


	@Override
	public void guardar(Producto producto) {
		productosRepo.save(producto);		
	}

	@Override
	public List<Producto> buscarTodas() {		
		return productosRepo.findAll();
	}

	@Override
	public void eliminar(int idProducto) {
		productosRepo.deleteById(idProducto);
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
