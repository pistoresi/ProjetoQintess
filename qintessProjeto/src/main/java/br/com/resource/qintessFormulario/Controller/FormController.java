package br.com.resource.qintessFormulario.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.resource.qintessFormulario.Database.formulariodb;
import br.com.resource.qintessFormulario.FormularioDAO.FormDao;

@Controller
public class FormController {

	@RequestMapping("/")
	public String Formulario() {
		System.out.println("controller passou");
		return "formulario";

	}
	@Autowired
	private FormDao form;

	@RequestMapping("/salva")
	public String salva(@ModelAttribute(name ="DadosBanco") formulariodb DadosBanco) {
		form.save(DadosBanco);
		
		return "redirect:/";
	}
		
	}


