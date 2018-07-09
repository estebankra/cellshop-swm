package unae.lp3.service;

import java.util.List;
import java.util.Optional;

import unae.lp3.model.Modelo;
import unae.lp3.repository.ModelosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class ModelosServiceJPA implements IModelosService {

	// Inyectamos una instancia desde nuestro Root ApplicationContext.
	@Autowired
	private ModelosRepository modelosRepo;

	@Override
	public void guardar(Modelo marcas) {
		modelosRepo.save(marcas);
	}

	@Override
	public List<Modelo> buscarTodas() {
		return modelosRepo.findAll();
	}

	@Override
	public void eliminar(int idModelo) {
		modelosRepo.deleteById(idModelo);
	}

	@Override
	public List<Modelo> buscarPorIdMarca(int idMarca) {	
		List<Modelo> modelos = modelosRepo.findByIdMarca(idMarca);
		return modelos;
	}

	@Override
	public Modelo buscarPorId(int idModelo) {
		Optional<Modelo> optional = modelosRepo.findById(idModelo);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
}
