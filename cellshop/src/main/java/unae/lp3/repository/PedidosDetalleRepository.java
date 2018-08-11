package unae.lp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import unae.lp3.model.Pedido_Detalle;

/**
 * Marcamos esta clase como un Bean de tipo Repository en nuestro Root
 * ApplicationContext. Nota: La anotacion @Repository es opcional ya que al
 * extender la interfaz JpaRepository Spring crea una instancia en nuestro Root
 * ApplicationContext.
 */
@Repository
public interface PedidosDetalleRepository extends JpaRepository<Pedido_Detalle, Integer> {
	@Query(value = "SELECT MAX(peddet_id) FROM `Pedidos_Detalle` WHERE 1", nativeQuery = true)
	public int findByPeddetId();
}