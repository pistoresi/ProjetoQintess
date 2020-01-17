var total = 10;
	var iLoop = 1;
	var iCount = 0;
	var linhaA;

	function AddCampos(firstElement, secondElement) {
		var hidden1 = document.getElementById(firstElement);
		var hidden2 = document.getElementById(secondElement);

		if (iCount < total) {

			hidden2.value = "";

			for (iLoop = 1; iLoop <= total; iLoop++) {
				if (document.getElementById("linha" + iLoop).style.display == "none") {
					if (hidden2.value == "") {
						hidden2.value = "linha" + iLoop;
					} else {
						hidden2.value += ",linha" + iLoop;
					}
				}
			}
			

			linhasOcultas = hidden2.value.split(",");

			if (linhasOcultas.length > 0) {
				
				document.getElementById(linhasOcultas[0]).style.display = "block";
				iCount++;

				
				if (hidden1.value == "") {
					hidden1.value = linhasOcultas[0];
				} else {
					hidden1.value += "," + linhasOcultas[0];
				}

			}
		}
	}

	function RemoverCampos(id) {
		      
		var hidden1 = document.getElementById("hidden1");

		
		var campoValor = document.getElementById("arq" + id).value;
		
		if (campoValor == "") {
			campoValor = "vazio";
		}

		if (confirm("O campo que contém o valor:\n» " + campoValor
				+ "\nserá excluído!\n\nDeseja prosseguir?")) {
			document.getElementById("linha" + id).style.display = "none";
			iCount--;

			if (hidden1.value.indexOf(",linha" + id) != -1) {
				hidden1.value = hidden1.value.replace(",linha" + id, "");
			} else if (hidden1.value.indexOf("linha" + id + ",") == 0) {
				hidden1.value = hidden1.value.replace("linha" + id + ",", "");
			} else {
				hidden1.value = "";
			}
		}
	}