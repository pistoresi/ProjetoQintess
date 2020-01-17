package br.com.resource.qintessFormulario.FormularioDAO;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.resource.qintessFormulario.Database.formulariodb;

@Repository
public interface FormDao extends CrudRepository<formulariodb, Integer> {
}
