package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Almacenamiento;

public interface IAlmacenamientosService {

	void eliminar(int idAlmacenamiento);
	void guardar(Almacenamiento almacenamiento);
	List<Almacenamiento> buscarTodas();
	Almacenamiento buscarPorId(int idAlmacenamiento);

}
