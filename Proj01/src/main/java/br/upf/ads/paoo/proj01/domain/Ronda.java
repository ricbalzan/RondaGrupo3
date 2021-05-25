package br.upf.ads.paoo.proj01.domain;

import java.io.Serializable;
import java.lang.Float;
import java.lang.Integer;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Ronda
 *
 */
@Entity

public class Ronda implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "RondaId")
	@SequenceGenerator(name = "RondaId", sequenceName = "RondaId", allocationSize = 1)
	private Integer id;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = false)
	private Date dataHoraInicio;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = true)
	private Date dataHoraFim;
	
	private Float latUtima;
	private Float lonUltima;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataHoraUltima;
	
	@ManyToOne
	private Locomocao locomocao;
	
	@ManyToMany
	private List<Pessoa> vigilantes;
	
	private static final long serialVersionUID = 1L;

	public Ronda() {
		super();
	}   
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}   
	public Date getDataHoraInicio() {
		return this.dataHoraInicio;
	}

	public void setDataHoraInicio(Date dataHoraInicio) {
		this.dataHoraInicio = dataHoraInicio;
	}   
	public Date getDataHoraFim() {
		return this.dataHoraFim;
	}

	public void setDataHoraFim(Date dataHoraFim) {
		this.dataHoraFim = dataHoraFim;
	}   
	public Float getLatUtima() {
		return this.latUtima;
	}

	public void setLatUtima(Float latUtima) {
		this.latUtima = latUtima;
	}   
	public Float getLonUltima() {
		return this.lonUltima;
	}

	public void setLonUltima(Float lonUltima) {
		this.lonUltima = lonUltima;
	}   
	public Date getDataHoraUltima() {
		return this.dataHoraUltima;
	}

	public void setDataHoraUltima(Date dataHoraUltima) {
		this.dataHoraUltima = dataHoraUltima;
	}   
	public Locomocao getLocomocao() {
		return this.locomocao;
	}

	public void setLocomocao(Locomocao locomocao) {
		this.locomocao = locomocao;
	}   
	public List<Pessoa> getVigilantes() {
		return this.vigilantes;
	}

	public void setVigilantes(List<Pessoa> vigilantes) {
		this.vigilantes = vigilantes;
	}
   
}
