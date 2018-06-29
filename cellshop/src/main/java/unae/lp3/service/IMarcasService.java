package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Marca;

public interface IMarcasService {

	void guardar(Marca marcas);
	List<Marca> buscarTodas();
	void eliminar(int idMarca);
	Marca buscarPorId(int idMarca);

}
