package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Carrito;

public interface ICarritosService {

	void guardar(Carrito carritos);
	List<Carrito> buscarTodas();
	void eliminar(int idCarrito);
	Carrito buscarPorId(int idCarrito);
	List<Carrito> buscarCarritoPorUsuario(String username);

}
