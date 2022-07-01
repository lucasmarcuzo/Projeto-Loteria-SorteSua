package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.model.UsuarioModel;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

/**
 *
 * @author LucasMarcuzo
 */
@RequestScoped
public class UsuarioDAO extends DAO<UsuarioModel>{

    @Inject
    public UsuarioDAO(EntityManager em) {
        super(em, UsuarioModel.class);
    }
    
    @Deprecated public UsuarioDAO() { this(null); }
    
    
}
