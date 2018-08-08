package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Memoria;

public interface IMemoriasService {

	void guardar(Memoria memoria);
	List<Memoria> buscarTodas();
	void eliminar(int idMemoria);
	Memoria buscarPorId(int idMemoria);

}
