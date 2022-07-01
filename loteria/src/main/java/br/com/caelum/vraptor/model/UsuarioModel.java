package br.com.caelum.vraptor.model;

//@author LucasMarcuzo
import br.com.caelum.vraptor.util.StringUtils;
import javax.persistence.Entity;
import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;

@Entity
public class UsuarioModel extends Model{

    @NotEmpty(message = "{usuario.nome.embranco}") @Size(min=4, max=20, message = "{usuario.nome.size}")
    private String nome;
    
    @NotEmpty(message = "{usuario.email.embranco}") @Email(message = "{usuario.email}")
    private String email;
    
    @NotEmpty(message = "{usuario.senha.embranco}") @Size(min=6, max=20, message = "{usuario.senha.size}")
    private String senha;
    
    //gets & sets
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = capitalize(nome);
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
    
    public void setSobrenome(String sobrenome) {
        this.nome += " "+capitalize(sobrenome);
    }
    
    //Colocar primeira letra de palavra em maiuscula
    public String capitalize(String c){
        if(c != null){
           return StringUtils.capitalize(c); 
        }
        return c;
    }
    
}

