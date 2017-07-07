package com.github.projetoleaf.dto;

import java.util.Date;
import java.util.Objects;

public class UsuarioDTO {

    private Integer id;

	private String cpf;

	private String email;

	private String senha;

	private String nome;

	private Integer matricula;

	private CursoDTO curso;

	private TipoDTO tipo;

	private Date data_nascimento;

	private char excluido;

    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getMatricula() {
		return matricula;
	}

	public void setMatricula(Integer matricula) {
		this.matricula = matricula;
	}

	public Integer getCurso() {
		return curso.getId();
	}

	public void setCurso(Integer id) {
		this.curso.setId(id);
	}

	public Integer getTipo() {
		return tipo.getId();
	}

	public void setTipo(Integer id) {
		this.tipo.setId(id);
	}

	public Date getData_nascimento() {
		return data_nascimento;
	}

	public void setData_nascimento(Date data_nascimento) {
		this.data_nascimento = data_nascimento;
	}

	public char getExcluido() {
		return excluido;
	}

	public void setExcluido(char excluido) {
		this.excluido = excluido;
	}

	@Override
    public int hashCode() {
        int hash = 5;
        hash = 97 * hash + Objects.hashCode(this.id);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final UsuarioDTO other = (UsuarioDTO) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }

}
