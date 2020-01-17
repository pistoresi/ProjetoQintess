<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">


<style>
.login-page {
	background-image: url("symbol2.png");
	background-repeat: no-repeat;
	background-size: cover;
	bottom: 0;
	color: black;
	left: 0;
	overflow: auto;
	padding: 3em;
	position: static;
	right: 0;
	text-align: center;
	top: 0;
}
</style>
<title>Formulario Qintess</title>



	<h1 class=" p-3 mb-2 bg-dark text-white"><center> Formulário Qintess</h1> </center>
	<div class=login-page>
	<div class="p-3 mb-2 bg-dark text-white">
		<form : form method="post" action="${salva}" modelAttribute="dado">

			<div>
				<label>Por Favor, insira seu nome completo :</label> <input
					type="text" name="Nome">

			</div>

			<br>Atualmente, você atua em uma área técnica?<input
				type="radio" value="Sim" name="tecnologiaPrincipalOuAtividade" id="toggle-1">
			<label for="toggle-1"> Sim </label> <input type="radio"
				name="tecnologiaPrincipalOuAtividade" value="Nao" id="toggle-2"> Não


			<div id="mostra">
				<label for="validationTextarea">Se sim, qual é a tecnologia
					principal que você utiliza? <input type="text" name="tecnologia">
			</div>
			
			<div id="mostra">
				<label for="validationTextarea">Se não, qual atividade que você executa? <input type="text" name="atividade">
			</div>
			
			<div id="mostra2">
				<label for="validationTextarea">Possui conhecimento em
					outras tecnologias?Se sim, quais? <textarea
						class="form-control is-invalid" name="conhecimentoOutraTecnologia"
						id="validationTextarea" placeholder="Digite aqui sua resposta"
						required></textarea> <br> <!-- Select Basic -->
					<div class="form-group">
						<label class="col-md-8 control-label" for="selectbasic">Possui
							quanto tempo de experiência ?</label>
						<div class="col-md-14">
							<select id="selectbasic" name="tempoExperienciaAreaFuncaoAtual"
								class="form-control">
								<option value="Menos de 1 ano">Menos de 1 ano</option>
								<option value="Entre 1 a 2 anos">Entre 1 a 2 anos</option>
								<option value="Entre 2 a 4 anos">Entre 2 a 4 anos</option>
								<option value="Entre 4 a 6 anos">Entre 4 a 6 anos</option>
								<option value="Mais que 6 anos">Mais que 6 anos</option>
							</select>
						</div>
					</div> <label for="validationTextarea">Selecione os idiomas
						falado por você :
						<div class="form-group">
							<div class="form-group">
								<label class="col-md-4 control-label" for="checkboxes"></label>
								<div class="col-md-14">
									<div class="checkbox">
										<label for="checkboxes-0"> <input type="checkbox"
											name="idiomas" id="checkboxes-0" value="Ingles"> Inglês
										</label>
									</div>
									<div class="checkbox">
										<label for="checkboxes-1"> <input type="checkbox"
											name="idiomas" id="checkboxes-1" value="Espanhol">Espanhol
										</label>
									</div>
									<div class="checkbox">
										<label for="checkboxes-1"> <input type="checkbox"
											name="idiomas" id="checkboxes-1" value="Alemao">Alemão
										</label>
									</div>
									<div class="checkbox">
										<label for="checkboxes-1"> <input type="checkbox"
											name="idiomas" id="checkboxes-1" value="Outros">Outros
										</label>
									</div>
								</div>
							</div>
						</div>
						<label align="center" class="col-md-14">Outros.:</label>
						<input class="col-md-14" type="text" name="outroIdioma">
			</div>
			<br> <label for="validationTextarea">Possui restrição do
				local de atuação? <select name="restricaoLocalAtuacao">
					<option>Não</option>
					<option>Sim</option>
			</select> <br> <br> <label for="validationTextarea">Cite a
					restrição, caso exista: <textarea class="form-control is-invalid"
						id="validationTextarea" name="motivoRestricao"
						placeholder="Digite aqui sua resposta" required></textarea> <br>
					<label for="validationTextarea">Formação Acadêmica: <select
						name="formacaoAcademica">
							<option value="Ensino Médio completo">Ensino Médio
								completo</option>
							<option value="Ensino Medio incompleto">Ensino Medio
								incompleto</option>
							<option value="Ensino Superior completo">Ensino Superior
								completo</option>
							<option value="Ensino Superior incompleto">Ensino
								Superior incompleto</option>
							<option value="MBA">MBA</option>
							<option value="Pós">Pós</option>
							<option value="Mestrado">Mestrado</option>
							<option value="Doutorado">Doutorado</option>
							<option value="Pós Doutorado">Pós Doutorado</option>
							<option value="PHD">PHD</option>
					</select> <br> <label for="validationTextarea">Quais beneficios
							gostaria de ter?</label> <br> <textarea
							class="form-control is-invalid" id="validationTextarea"
							name="beneficioDesejavel" placeholder="Digite aqui sua resposta"
							required></textarea> <br> <label for="validationTextarea">Possui
							filhos? <input type="text" name="temFilhos"> <label>Se
								sim, quantos ?</label> <select name="qtdFilhos">
								<option value="0">0</option>
								<option value="Sim, possuo 1">Sim, possuo 1</option>
								<option value="Sim, possuo 2">Sim, possuo 2</option>
								<option value="Sim, possuo 3">Sim, possuo 3</option>
								<option value="Sim, possuo mais de 3">Sim, possuo mais
									de 3</option>
						</select> <br> </br> <script type="text/javascript">
							var totalCampos = 10;
							var iLoop = 1;
							var iCount = 0;
							var linhaAtual;

							function AddCampos() {
								var hidden1 = document
										.getElementById("hidden1");
								var hidden2 = document
										.getElementById("hidden2");

								if (iCount < totalCampos) {

									hidden2.value = "";

									for (iLoop = 1; iLoop <= totalCampos; iLoop++) {
										if (document.getElementById("linha"
												+ iLoop).style.display == "none") {
											if (hidden2.value == "") {
												hidden2.value = "linha" + iLoop;
											} else {
												hidden2.value += ",linha"
														+ iLoop;
											}
										}
									}

									linhasOcultas = hidden2.value.split(",");

									if (linhasOcultas.length > 0) {

										document
												.getElementById(linhasOcultas[0]).style.display = "block";
										iCount++;

										if (hidden1.value == "") {
											hidden1.value = linhasOcultas[0];
										} else {
											hidden1.value += ","
													+ linhasOcultas[0];
										}

									}
								}
							}

							function RemoverCampos(id) {

								var hidden1 = document
										.getElementById("hidden1");

								var campoValor = document.getElementById("arq"
										+ id).value;

								if (campoValor == "") {
									campoValor = "vazio";
								}

								if (confirm("O campo que contém o valor:\n» "
										+ campoValor
										+ "\nserá excluído!\n\nDeseja prosseguir?")) {
									document.getElementById("linha" + id).style.display = "none";
									iCount--;

									if (hidden1.value.indexOf(",linha" + id) != -1) {
										hidden1.value = hidden1.value.replace(
												",linha" + id, "");
									} else if (hidden1.value.indexOf("linha"
											+ id + ",") == 0) {
										hidden1.value = hidden1.value.replace(
												"linha" + id + ",", "");
									} else {
										hidden1.value = "";
									}
								}
							}
						</script> Idade de cada filho (caso possua):
							<form name="idadeFilhos" method="post">

								<script type="text/javascript">
									for (iLoop = 1; iLoop <= totalCampos; iLoop++) {
										document
												.write("<span id='linha"+iLoop+"' style='display:none'>"
														+ iLoop
														+ ": <input type='text' id='arq"+iLoop+"' name='idadeFilhos"+iLoop+"'> <input type='button' value='Deletar' onclick='RemoverCampos(\""
														+ iLoop
														+ "\")'></span>");
									}
								</script>

								<input type="button" value="+" onclick="AddCampos()"> <input
									type="hidden" name="idadeFilhos" id="hidden1"> <input
									type="hidden" name="idadeFilhos" id="hidden2"> <br> <br>
								<label class="custom-control-label"
									for="customControlValidation2">Possui certificados?</label> <input
									type="radio" name="certificacoes" id="toggle-1"> <label
									for="toggle-1">Sim</label> <input type="radio"
									name="certificacoes" id="toggle-1"> <label
									for="toggle-2">Não</label> <br> <label
									for="validationTextarea">Quais certificações?
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Se
											sim, quais ?</label>
										<div class="col-md-14">
											<input id="textinput" name="certificacoesNome" type="text"
												placeholder="Digite sua resposta aqui"
												class="form-control input-md" required="">

										</div>
									</div> <br> <label for="validationTextarea">Tem
										interesse em outra área? Qual?
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="validationTextarea"></label>
											<div class="col-md-14">
												<input id="textinput" name="temasDeInteresse" type="text"
													placeholder="Digite sua resposta aqui"
													class="form-control input-md" required="">

											</div>
										</div> <br> <label for="validationTextarea"></label>Tem
										interesse em ensinar algo ? Se sim, cite o que poderia
										ensinar?
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="validationTextarea"></label>
											<div class="col-md-14">
												<input id="textinput" name="temasDeInteresseEnsinar"
													type="text" placeholder="Digite sua resposta aqui"
													class="form-control input-md" required="">

											</div>
										</div>
									
										
							</form> <br>
							<div class="form-group">
								<label class="col-md-4 control-label" for="salva"></label>
								<div class="col-md-14">
									<button id="salva" name="salva" class="btn btn-success">Enviar formulário</button>
								</div>
							</div>
</body>
</html>