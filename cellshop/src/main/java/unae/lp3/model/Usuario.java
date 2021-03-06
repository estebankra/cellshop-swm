package unae.lp3.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Usuarios")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment MySQL
	private int usuario_id;
	private String perfil;
	private String apellidos;
	private String nombre;
	private Date fechanac;
	private String docunum;
	private String direccion;
	private String ciudad;
	private String pais;
	private String telefono;
	private String email;
	private String usuario;
	private String contrasena;
	
	public Usuario() {
	}

	public Usuario(int usuario_id, String perfil, String apellidos, String nombre, Date fechanac, String docunum,
			String direccion, String ciudad, String pais, String telefono, String email, String usuario,
			String contrasena) {
		super();
		this.usuario_id = usuario_id;
		this.perfil = perfil;
		this.apellidos = apellidos;
		this.nombre = nombre;
		this.fechanac = fechanac;
		this.docunum = docunum;
		this.direccion = direccion;
		this.ciudad = ciudad;
		this.pais = pais;
		this.telefono = telefono;
		this.email = email;
		this.usuario = usuario;
		this.contrasena = contrasena;
	}

	public int getUsuario_id() {
		return usuario_id;
	}

	public void setUsuario_id(int usuario_id) {
		this.usuario_id = usuario_id;
	}
	
	public String getPerfil() {
		return perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Date getFechanac() {
		return fechanac;
	}

	public void setFechanac(Date fechanac) {
		this.fechanac = fechanac;
	}

	public String getDocunum() {
		return docunum;
	}

	public void setDocunum(String docunum) {
		this.docunum = docunum;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	@Override
	public String toString() {
		return "Usuario [usuario_id=" + usuario_id + ", perfil=" + perfil + ", apellidos=" + apellidos + ", nombre="
				+ nombre + ", fechanac=" + fechanac + ", docunum=" + docunum + ", direccion=" + direccion + ", ciudad="
				+ ciudad + ", pais=" + pais + ", telefono=" + telefono + ", email=" + email + ", usuario=" + usuario
				+ ", contrasena=" + contrasena + "]";
	}
	
}