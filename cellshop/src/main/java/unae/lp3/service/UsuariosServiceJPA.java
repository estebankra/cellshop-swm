package unae.lp3.service;

import java.util.List;
import java.util.Optional;

import unae.lp3.model.Usuario;
import unae.lp3.repository.UsuariosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class UsuariosServiceJPA implements IUsuariosService{
	
	// Inyectamos una instancia desde nuestro Root ApplicationContext.
    @Autowired
	private UsuariosRepository usuariosRepo;


	@Override
	public void guardar(Usuario usuarios) {
		usuariosRepo.save(usuarios);		
	}

	@Override
	public List<Usuario> buscarTodas() {		
		return usuariosRepo.findAll();
	}

	@Override
	public void eliminar(int idUsuario) {
		usuariosRepo.deleteById(idUsuario);
	}
	
	@Override
	public Usuario buscarPorId(int idUsuario) {
		Optional<Usuario> optional = usuariosRepo.findById(idUsuario);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
}
