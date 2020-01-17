package br.com.resource.qintessFormulario.Database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "TB_Formulario")
public class formulariodb {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String Nome;
	
	@NotBlank
	@Column(length = 100, nullable = true)
	private String tecnologiaPrincipalOuAtividade;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String conhecimentoOutraTecnologia;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String formacaoAcademica;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String certificacoes;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String tempoExperienciaAreaFuncaoAtual;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String idiomas;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String restricaoLocalAtuacao;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String interesseOutraArea;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTecnologiaPrincipalOuAtividade() {
		return tecnologiaPrincipalOuAtividade;
	}

	public void setTecnologiaPrincipalOuAtividade(String tecnologiaPrincipalOuAtividade) {
		this.tecnologiaPrincipalOuAtividade = tecnologiaPrincipalOuAtividade;
	}

	public String getConhecimentoOutraTecnologia() {
		return conhecimentoOutraTecnologia;
	}

	public void setConhecimentoOutraTecnologia(String conhecimentoOutraTecnologia) {
		this.conhecimentoOutraTecnologia = conhecimentoOutraTecnologia;
	}

	public String getFormacaoAcademica() {
		return formacaoAcademica;
	}

	public void setFormacaoAcademica(String formacaoAcademica) {
		this.formacaoAcademica = formacaoAcademica;
	}

	public String getCertificacoes() {
		return certificacoes;
	}

	public void setCertificacoes(String certificacoes) {
		this.certificacoes = certificacoes;
	}

	public String getTempoExperienciaAreaFuncaoAtual() {
		return tempoExperienciaAreaFuncaoAtual;
	}

	public void setTempoExperienciaAreaFuncaoAtual(String tempoExperienciaAreaFuncaoAtual) {
		this.tempoExperienciaAreaFuncaoAtual = tempoExperienciaAreaFuncaoAtual;
	}

	public String getIdiomas() {
		return idiomas;
	}

	public void setIdiomas(String idiomas) {
		this.idiomas = idiomas;
	}

	public String getRestricaoLocalAtuacao() {
		return restricaoLocalAtuacao;
	}

	public void setRestricaoLocalAtuacao(String restricaoLocalAtuacao) {
		this.restricaoLocalAtuacao = restricaoLocalAtuacao;
	}

	public String getInteresseOutraArea() {
		return interesseOutraArea;
	}

	public void setInteresseOutraArea(String interesseOutraArea) {
		this.interesseOutraArea = interesseOutraArea;
	}

	public String getTemFilhos() {
		return temFilhos;
	}

	public void setTemFilhos(String temFilhos) {
		this.temFilhos = temFilhos;
	}

	public String getQtdFilhos() {
		return qtdFilhos;
	}

	public void setQtdFilhos(String qtdFilhos) {
		this.qtdFilhos = qtdFilhos;
	}

	public String getIdadeFilhos() {
		return idadeFilhos;
	}

	public void setIdadeFilhos(String idadeFilhos) {
		this.idadeFilhos = idadeFilhos;
	}

	public String getBeneficioDesejavel() {
		return beneficioDesejavel;
	}

	public void setBeneficioDesejavel(String beneficioDesejavel) {
		this.beneficioDesejavel = beneficioDesejavel;
	}

	public String getTemasDeInteresse() {
		return temasDeInteresse;
	}

	public void setTemasDeInteresse(String temasDeInteresse) {
		this.temasDeInteresse = temasDeInteresse;
	}

	public String getTemasDeInteresseEnsinar() {
		return temasDeInteresseEnsinar;
	}

	public void setTemasDeInteresseEnsinar(String temasDeInteresseEnsinar) {
		this.temasDeInteresseEnsinar = temasDeInteresseEnsinar;
	}

	@NotBlank
	@Column(length = 100, nullable = true)
	private String temFilhos;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String qtdFilhos;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String idadeFilhos;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String beneficioDesejavel;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String temasDeInteresse;

	@NotBlank
	@Column(length = 100, nullable = true)
	private String temasDeInteresseEnsinar;
}