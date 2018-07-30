package unae.lp3.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import unae.lp3.model.Carrito;
import unae.lp3.model.Usuario;
import unae.lp3.repository.CarritosRepository;
import unae.lp3.repository.UsuariosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class CarritosServiceJPA implements ICarritosService{
	
	// Inyectamos una instancia desde nuestro Root ApplicationContext.
    @Autowired
	private CarritosRepository carritosRepo;
    
    @Autowired
	private UsuariosRepository usuariosRepo;

	@Override
	public void guardar(Carrito carritos) {
		carritosRepo.save(carritos);		
	}

	@Override
	public List<Carrito> buscarTodas() {		
		return carritosRepo.findAll();
	}

	@Override
	public void eliminar(int idCarrito) {
		carritosRepo.deleteById(idCarrito);
	}
	
	@Override
	public Carrito buscarPorId(int idCarrito) {
		Optional<Carrito> optional = carritosRepo.findById(idCarrito);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	@Override
	public List<Carrito> buscarCarritoPorUsuario(String username) {
		List<Carrito> listaCarritoUsu = null;
		listaCarritoUsu = new LinkedList<>();
		List<Carrito> listaCarritos = carritosRepo.findAll();
		for (Carrito p : listaCarritos) {
			if (p.getUsuario().getUsuario().equals(username)) {
				listaCarritoUsu.add(p);
			}
		}
		return listaCarritoUsu;
	}
}
