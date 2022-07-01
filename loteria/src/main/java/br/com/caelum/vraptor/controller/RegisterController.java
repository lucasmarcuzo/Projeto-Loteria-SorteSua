package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.model.UsuarioModel;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

/**
 *
 * @author LucasMarcuzo
 */
@Path("register")
@Controller
public class RegisterController { //(Nome da Pasta)
    
    @Inject EntityManager em;
    @Inject Result result;
    @Inject UsuarioDAO UsuarioDao;
    @Inject Validator validator;
    
    @Get("")
    public void register(){ //(Nome do Arquivo)
    
    }
    
    @IncludeParameters
    @Post("salvausuario")
    //@valid (Validar o usuário de acordo com as regras no UsuarioModel.)
    public void salvaUsuario(@Valid UsuarioModel usuario, String confirmaSenha){ 
        
        //Mantendo campos preenchidos em caso de erro, o IncludeParameters faz este trabalho automaticamente.
        //result.include("usuario", usuario);
        //result.include("confirmaSenha", confirmaSenha);
       
        //Validando usuário
        boolean asSenhasSaoIguais = confirmaSenha.equals(usuario.getSenha());
        validator.addIf(!asSenhasSaoIguais, new SimpleMessage("confimaSenha", "A confirmação está diferente da Senha!"));
        
        //Se der erro direciona para cadastrar/register.
        validator.onErrorRedirectTo(this).register();
        
        //Salvando usuário no BD.
        UsuarioDao.insertOrUpdate(usuario);
        
        //Redirecionando para o Dashboard.
        result.redirectTo(DashboardController.class).dashboard();
        
        
    }
}
