package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Usuario;

public interface IUsuariosService {

	void guardar(Usuario usuario);
	List<Usuario> buscarTodas();
	void eliminar(int idUsuario);
	Usuario buscarPorId(int idUsuario);
	List<Usuario> buscarTodosLosClientes();
	Usuario buscarPorUsuario(String username);
	int ObtenerIdPorNombre(String userLog);
}
