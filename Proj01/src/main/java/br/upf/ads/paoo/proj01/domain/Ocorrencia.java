package br.upf.ads.paoo.proj01.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Ocorrencia implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "OcorrenciaId")
	@SequenceGenerator(name = "OcorrenciaId", sequenceName = "OcorrenciaId", allocationSize = 1)
	private long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataHora;
	
	@Column(length = 60, nullable = false)
	private String titulo;
	
	@Column(length = 150, nullable = false)
	private String descricao;
	
	@Column(length = 10, nullable = false)
	private float lat;
	
	@Column(length = 10, nullable = false)
	private float lon;
	
	private String foto;
	
	@ManyToOne(optional = false)
	private Ronda ronda;
	
	private static final long serialersionUID = 1L;
	
	public Ocorrencia(Integer id) {
		super();
		this.id = id;
	}
	
	
	
	public Ocorrencia(long id, Date dataHora, String titulo, String descricao, float lat, float lon, String foto) {
		super();
		this.id = id;
		this.dataHora = dataHora;
		this.titulo = titulo;
		this.descricao = descricao;
		this.lat = lat;
		this.lon = lon;
		this.foto = foto;
	}




	public Ocorrencia() {
		super();

	}




	public long getId() {
		return id;
	}




	public void setId(long id) {
		this.id = id;
	}




	public Date getDataHora() {
		return dataHora;
	}




	public void setDataHora(Date dataHora) {
		this.dataHora = dataHora;
	}




	public String getTitulo() {
		return titulo;
	}




	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}




	public String getDescricao() {
		return descricao;
	}




	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}




	public float getLat() {
		return lat;
	}




	public void setLat(float lat) {
		this.lat = lat;
	}




	public float getLon() {
		return lon;
	}




	public void setLon(float lon) {
		this.lon = lon;
	}




	public String getFoto() {
		return foto;
	}




	public void setFoto(String foto) {
		this.foto = foto;
	}
}
