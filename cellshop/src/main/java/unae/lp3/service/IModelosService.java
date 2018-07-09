package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Modelo;

public interface IModelosService {

	void eliminar(int idModelo);
	List<Modelo> buscarTodas();
	void guardar(Modelo marcas);
	Modelo buscarPorId(int idModelo);
	List<Modelo> buscarPorIdMarca(int idMarca);
}
