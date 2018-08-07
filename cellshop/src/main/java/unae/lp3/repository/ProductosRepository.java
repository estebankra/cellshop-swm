package unae.lp3.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import unae.lp3.model.Producto;

/**
 * Marcamos esta clase como un Bean de tipo Repository en nuestro Root
 * ApplicationContext. Nota: La anotacion @Repository es opcional ya que al
 * extender la interfaz JpaRepository Spring crea una instancia en nuestro Root
 * ApplicationContext.
 */
@Repository
public interface ProductosRepository extends JpaRepository<Producto, Integer> {
	@Query(value = "SELECT * FROM `Productos` WHERE 1 ORDER BY `prod_id` DESC", nativeQuery = true)
	public List<Producto> findByNewProd();
}