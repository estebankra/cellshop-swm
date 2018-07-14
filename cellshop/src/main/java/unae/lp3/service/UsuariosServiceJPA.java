package unae.lp3.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import unae.lp3.model.Producto;
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
	public void guardar(Usuario usuario) {
		usuariosRepo.save(usuario);		
	}

	@Override
	public List<Usuario> buscarTodas() {		
		return usuariosRepo.findAll();
	}
	
	@Override
	public List<Usuario> buscarTodosLosClientes() {
		List<Usuario> usuarios = null;
		usuarios = new LinkedList<>();
		List<Usuario> listaUsuarios = usuariosRepo.findAll();
		for (Usuario p : listaUsuarios) {
			if (p.getPerfil().equals("cliente")) {
				usuarios.add(p);
			}
		}
		return usuarios;
	}

	@Override
	public void eliminar(int idUsuario) {
		usuariosRepo.deleteById(idUsuario);
	}

	@Override
	public Usuario buscarPorId(int idUsuario) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*@Override
	public Usuario buscarPorId(int idUsuario) {
		Optional<Usuario> optional = usuariosRepo.findById(idUsuario);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}*/
}
