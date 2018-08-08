package unae.lp3.service;

import java.util.List;
import java.util.Optional;

import unae.lp3.model.Memoria;
import unae.lp3.repository.MemoriasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class MemoriasServiceJPA implements IMemoriasService{
	
	// Inyectamos una instancia desde nuestro Root ApplicationContext.
    @Autowired
	private MemoriasRepository memoriasRepo;


	@Override
	public void guardar(Memoria memoria) {
		memoriasRepo.save(memoria);		
	}

	@Override
	public List<Memoria> buscarTodas() {		
		return memoriasRepo.findAll();
	}

	@Override
	public void eliminar(int idMemoria) {
		memoriasRepo.deleteById(idMemoria);
	}
	
	@Override
	public Memoria buscarPorId(int idMemoria) {
		Optional<Memoria> optional = memoriasRepo.findById(idMemoria);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
}
