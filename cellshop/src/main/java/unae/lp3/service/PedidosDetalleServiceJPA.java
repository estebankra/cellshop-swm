package unae.lp3.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import unae.lp3.model.Pedido_Detalle;
import unae.lp3.repository.PedidosDetalleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class PedidosDetalleServiceJPA implements IPedidosDetalleService {

	// Inyectamos una instancia desde nuestro Root ApplicationContext.
	@Autowired
	private PedidosDetalleRepository pedidosDetalleRepo;

	@Override
	public void guardar(Pedido_Detalle pedidos_detalle) {
		pedidosDetalleRepo.save(pedidos_detalle);
	}

	@Override
	public List<Pedido_Detalle> buscarTodas() {
		return pedidosDetalleRepo.findAll();
	}

	@Override
	public void eliminar(int idPedido_Detalle) {
		pedidosDetalleRepo.deleteById(idPedido_Detalle);
	}

	@Override
	public Pedido_Detalle buscarPorId(int idPedido_Detalle) {
		Optional<Pedido_Detalle> optional = pedidosDetalleRepo.findById(idPedido_Detalle);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	@Override
	public List<Pedido_Detalle> buscarPorIdPedido(int idPedido) {
		 List<Pedido_Detalle> listaPedDetPorId = null; // Buscamos en la tabla de horarios,
		 listaPedDetPorId = new LinkedList<>();

		List<Pedido_Detalle> listaPedidosDetalle = pedidosDetalleRepo.findAll();

		// Formamos la lista final de Modelos que regresaremos.
		for (Pedido_Detalle h : listaPedidosDetalle) {
			if (h.getPedido().getPedido_id() == idPedido) {
				listaPedDetPorId.add(h);
			}
		}
		return listaPedDetPorId;
	}
}
