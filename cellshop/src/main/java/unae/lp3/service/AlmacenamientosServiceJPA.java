package unae.lp3.service;

import java.util.List;
import java.util.Optional;

import unae.lp3.model.Almacenamiento;
import unae.lp3.repository.AlmacenamientosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class AlmacenamientosServiceJPA implements IAlmacenamientosService{
	
	// Inyectamos una instancia desde nuestro Root ApplicationContext.
    @Autowired
	private AlmacenamientosRepository almacenamientosRepo;


	@Override
	public void guardar(Almacenamiento almacenamiento) {
		almacenamientosRepo.save(almacenamiento);		
	}

	@Override
	public List<Almacenamiento> buscarTodas() {		
		return almacenamientosRepo.findAll();
	}

	@Override
	public void eliminar(int idAlmacenamiento) {
		almacenamientosRepo.deleteById(idAlmacenamiento);
	}
	
	@Override
	public Almacenamiento buscarPorId(int idAlmacenamiento) {
		Optional<Almacenamiento> optional = almacenamientosRepo.findById(idAlmacenamiento);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
}