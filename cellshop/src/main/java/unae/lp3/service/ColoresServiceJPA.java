package unae.lp3.service;

import java.util.List;
import java.util.Optional;

import unae.lp3.model.Color;
import unae.lp3.repository.ColoresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class ColoresServiceJPA implements IColoresService{
	
	// Inyectamos una instancia desde nuestro Root ApplicationContext.
    @Autowired
	private ColoresRepository coloresRepo;


	@Override
	public void guardar(Color color) {
		coloresRepo.save(color);		
	}

	@Override
	public List<Color> buscarTodas() {		
		return coloresRepo.findAll();
	}

	@Override
	public void eliminar(int idColor) {
		coloresRepo.deleteById(idColor);
	}
	
	@Override
	public Color buscarPorId(int idColor) {
		Optional<Color> optional = coloresRepo.findById(idColor);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
}
