package unae.lp3.service;

import java.util.List;
import java.util.Optional;

import unae.lp3.model.Marca;
import unae.lp3.repository.MarcasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class MarcasServiceJPA implements IMarcasService{
	
	// Inyectamos una instancia desde nuestro Root ApplicationContext.
    @Autowired
	private MarcasRepository marcasRepo;


	@Override
	public void guardar(Marca marcas) {
		marcasRepo.save(marcas);		
	}

	@Override
	public List<Marca> buscarTodas() {		
		return marcasRepo.findAll();
	}

	@Override
	public void eliminar(int idMarca) {
		marcasRepo.deleteById(idMarca);
	}
	
	@Override
	public Marca buscarPorId(int idMarca) {
		Optional<Marca> optional = marcasRepo.findById(idMarca);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
}
