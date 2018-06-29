package unae.lp3.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Marcas")
public class Marca {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment MySQL
	private int marca_id;
	private String descripcion;
	
	public Marca() {

	}
	
	public Marca(int marca_id, String descripcion) {
		super();
		this.marca_id = marca_id;
		this.descripcion = descripcion;
	}
	
	public int getMarca_id() {
		return marca_id;
	}
	public void setMarca_id(int marca_id) {
		this.marca_id = marca_id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Marca [marca_id=" + marca_id + ", descripcion=" + descripcion + "]";
	}
	
}
