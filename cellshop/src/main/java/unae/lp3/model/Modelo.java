package unae.lp3.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Modelo")
public class Modelo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment MySQL
	private int model_id;
	private int marca_id;
	private String nombre;
	private String resolucion;
	private String pantalla;
	private String peso;
	private String dimensiones;
	private String bateria;
	
	public Modelo() {

	}
	
	public Modelo(int model_id, int marca_id, String nombre, String resolucion, String pantalla, String peso,
			String dimensiones, String bateria) {
		super();
		this.model_id = model_id;
		this.marca_id = marca_id;
		this.nombre = nombre;
		this.resolucion = resolucion;
		this.pantalla = pantalla;
		this.peso = peso;
		this.dimensiones = dimensiones;
		this.bateria = bateria;
	}

	public int getModel_id() {
		return model_id;
	}

	public void setModel_id(int model_id) {
		this.model_id = model_id;
	}

	public int getMarca_id() {
		return marca_id;
	}

	public void setMarca_id(int marca_id) {
		this.marca_id = marca_id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getResolucion() {
		return resolucion;
	}

	public void setResolucion(String resolucion) {
		this.resolucion = resolucion;
	}

	public String getPantalla() {
		return pantalla;
	}

	public void setPantalla(String pantalla) {
		this.pantalla = pantalla;
	}

	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public String getDimensiones() {
		return dimensiones;
	}

	public void setDimensiones(String dimensiones) {
		this.dimensiones = dimensiones;
	}

	public String getBateria() {
		return bateria;
	}

	public void setBateria(String bateria) {
		this.bateria = bateria;
	}

	@Override
	public String toString() {
		return "Modelo [model_id=" + model_id + ", marca_id=" + marca_id + ", nombre=" + nombre + ", resolucion="
				+ resolucion + ", pantalla=" + pantalla + ", peso=" + peso + ", dimensiones=" + dimensiones
				+ ", bateria=" + bateria + "]";
	}
	
}