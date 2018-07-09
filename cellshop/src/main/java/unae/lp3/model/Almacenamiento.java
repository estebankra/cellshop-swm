package unae.lp3.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Almacenamiento")
public class Almacenamiento {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment MySQL
	private int almacen_id;
	private String descripcion;

	public Almacenamiento() {
	}
	
	public Almacenamiento(int almacen_id, String descripcion) {
		super();
		this.almacen_id = almacen_id;
		this.descripcion = descripcion;
	}

	public int getAlmacen_id() {
		return almacen_id;
	}
	public void setAlmacen_id(int almacen_id) {
		this.almacen_id = almacen_id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Almacenamiento [almacen_id=" + almacen_id + ", descripcion=" + descripcion + "]";
	}
}
