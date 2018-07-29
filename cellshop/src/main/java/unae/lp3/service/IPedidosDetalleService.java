package unae.lp3.service;

import java.util.List;

import unae.lp3.model.Pedido_Detalle;

public interface IPedidosDetalleService {
	
	void guardar(Pedido_Detalle pedidos_detalle);
	List<Pedido_Detalle> buscarTodas();
	Pedido_Detalle buscarPorId(int idPedido_Detalle);
	void eliminar(int idPedido_Detalle);
	List<Pedido_Detalle> buscarPorIdPedido(int idPedido);

}
