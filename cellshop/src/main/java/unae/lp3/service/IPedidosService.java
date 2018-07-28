package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Pedido;

public interface IPedidosService {

	void guardar(Pedido pedidos);
	List<Pedido> buscarTodas();
	void eliminar(int idPedido);
	Pedido buscarPorId(int idPedido);
	List<Pedido> buscarPorIdUsuario(int usuarioId);

}
