package com.github.projetoleaf.beans;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = { "data", "pratoBase", "pratoTradicional", "pratoVegetariano", "guarnicao", "salada", "sobremesa", "suco" })
@ToString(of = { "data", "pratoBase", "pratoTradicional", "pratoVegetariano", "guarnicao", "salada", "sobremesa", "suco" })
@Entity
@Table(name = "cardapio")
public class Cardapio implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private Integer id;
	
	@NotNull
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "data")
	private Date data;
	
	@NotBlank
	@Column(name = "prato_base")
	private String pratoBase;
	
	@NotBlank
	@Column(name = "prato_tracidional")
	private String pratoTradicional;
	
	@NotBlank
	@Column(name = "prato_vegetariano")
	private String pratoVegetariano;
	
	@NotBlank
	@Column(name = "guarnicao")
	private String guarnicao;
	
	@NotBlank
	@Column(name = "salada")
	private String salada;
	
	@NotBlank
	@Column(name = "sobremesa")
	private String sobremesa;
	
	@NotBlank
	@Column(name = "suco")
	private String suco;
}