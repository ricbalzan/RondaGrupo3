package br.upf.ads.paoo.proj01.domain;

import java.io.Serializable;
import java.lang.Float;
import java.lang.Integer;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Localizacao
 *
 */
@Entity

public class Localizacao implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "LocalizacaoId")
	@SequenceGenerator(name = "LocalizacaoId", sequenceName = "LocalizacaoId", allocationSize = 1)
	private Integer id;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = false)
	private Date dataHora;
	
	@Column(nullable = false)
	private Float lat;
	
	@Column(nullable = false)
	private Float lon;
	
	@ManyToOne(optional =  false)
	private Ronda ronda;
	private static final long serialVersionUID = 1L;

	public Localizacao() {
		super();
	}  
		
	public Localizacao(Integer id) {
		super();
		this.id = id;
	}

	public Localizacao(Integer id, Date dataHora, Float lat, Float lon, Ronda ronda) {
		super();
		this.id = id;
		this.dataHora = dataHora;
		this.lat = lat;
		this.lon = lon;
		this.ronda = ronda;
	}



	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}   
	public Date getDataHora() {
		return this.dataHora;
	}

	public void setDataHora(Date dataHora) {
		this.dataHora = dataHora;
	}   
	public Float getLat() {
		return this.lat;
	}

	public void setLat(Float lat) {
		this.lat = lat;
	}   
	public Float getLon() {
		return this.lon;
	}

	public void setLon(Float lon) {
		this.lon = lon;
	}   
	public Ronda getRonda() {
		return this.ronda;
	}

	public void setRonda(Ronda ronda) {
		this.ronda = ronda;
	}
   
}
