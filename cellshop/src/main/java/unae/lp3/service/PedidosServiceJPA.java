package unae.lp3.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import unae.lp3.model.Pedido;
import unae.lp3.model.Usuario;
import unae.lp3.repository.PedidosRepository;
import unae.lp3.repository.UsuariosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// Registramos esta clase como un Bean en nuestro Root ApplicationContext.
@Service
public class PedidosServiceJPA implements IPedidosService {

	// Inyectamos una instancia desde nuestro Root ApplicationContext.
	@Autowired
	private PedidosRepository pedidosRepo;

	@Override
	public void guardar(Pedido pedidos) {
		pedidosRepo.save(pedidos);
	}

	@Override
	public List<Pedido> buscarTodas() {
		return pedidosRepo.findAll();
	}

	@Override
	public void eliminar(int idPedido) {
		pedidosRepo.deleteById(idPedido);
	}

	@Override
	public Pedido buscarPorId(int idPedido) {
		Optional<Pedido> optional = pedidosRepo.findById(idPedido);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	@Override
	public List<Pedido> buscarPorIdUsuario(int usuarioId) {
		List<Pedido> pedidosUsu = null;
		List<Pedido> listaPedidos = pedidosRepo.findAll();
		pedidosUsu = new LinkedList<>();
			for (Pedido p : listaPedidos) {
				if (p.getUsuario().getUsuario_id() == (usuarioId)) {
					pedidosUsu.add(p);
				}
			}
		
		return pedidosUsu;
	}

}
