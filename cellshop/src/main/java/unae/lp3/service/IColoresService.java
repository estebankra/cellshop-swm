package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Color;

public interface IColoresService {

	void guardar(Color color);
	List<Color> buscarTodas();
	void eliminar(int idColor);
	Color buscarPorId(int idColor);

}
