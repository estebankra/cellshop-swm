package unae.lp3.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import unae.lp3.model.Modelo;

/**
 * Marcamos esta clase como un Bean de tipo Repository en nuestro Root
 * ApplicationContext. Nota: La anotacion @Repository es opcional ya que al
 * extender la interfaz JpaRepository Spring crea una instancia en nuestro Root
 * ApplicationContext.
 */
@Repository
public interface ModelosRepository extends JpaRepository<Modelo, Integer> {

	@Query(value = "SELECT * FROM `Modelo` WHERE 1", nativeQuery = true)
	public List<Modelo> findByIdMarca(@Param("marca_id") int idMarca);

}