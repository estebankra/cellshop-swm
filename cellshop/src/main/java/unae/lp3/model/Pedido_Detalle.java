package unae.lp3.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Pedidos_Detalle")
public class Pedido_Detalle {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment MySQL
	private int peddet_id;
	private int pedido_id;
	private float precio;

	@OneToOne
	@JoinColumn(name = "prod_id")
	private Producto producto;

	public Pedido_Detalle() {

	}

	public int getPeddet_id() {
		return peddet_id;
	}

	public void setPeddet_id(int peddet_id) {
		this.peddet_id = peddet_id;
	}

	public int getPedido_id() {
		return pedido_id;
	}

	public void setPedido_id(int pedido_id) {
		this.pedido_id = pedido_id;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	@Override
	public String toString() {
		return "Pedido_Detalle [peddet_id=" + peddet_id + ", pedido_id=" + pedido_id + ", precio=" + precio
				+ ", producto=" + producto + "]";
	}

}