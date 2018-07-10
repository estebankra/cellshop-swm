package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Producto;

public interface IProductosService {
	
	void guardar(Producto producto);
	List<Producto> buscarTodas();
	Producto buscarPorId(int idProducto);
	void eliminar(int idProducto);
	List<Producto> buscarPorIdMarca(int idMarca);

}
