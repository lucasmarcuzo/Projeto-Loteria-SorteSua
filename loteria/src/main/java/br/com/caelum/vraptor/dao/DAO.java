package br.com.caelum.vraptor.dao;
import javax.persistence.EntityManager;
import br.com.caelum.vraptor.model.Model;

/**
 * Classe Generica que mantem metodos basicos de persistencia de objetos
 * no banco de dados
 * @author Tiago Luz
 *
 */
public abstract class DAO <T extends Model> {

	protected EntityManager em;
	private Class<T> persistedClass;
	
	public DAO(EntityManager em, Class<T> persistedClass) {
            this.em = em;
            this.persistedClass = persistedClass;
	}
	
	/**
	 * Persiste um Objeto passado como parâmetro no banco de dados
	 * @param object
	 */
	public T insert(T model) {
            em.persist(model);
            return model;
	}

	/**
	 * Persiste ou atualiza um objeto passado como parâmetro no banco de dados
	 * @param object
	 */
	public T insertOrUpdate(T model) { 
		
            if(model.getId() < 1) {
                return insert(model);
            }

            return update(model);
		
	}
	
	public T update(T model) {
            model = em.merge(model);
            em.persist(model);
            return model;
	}
	
	/**
	 * Deleta um Objeto passado como parâmetro no banco de dados
	 * OBS: Este Objeto deve ter o ID informado
	 * @param object
	 */
	public void delete(T model) {
            if(model!= null && model.getId() < 1) {
                    throw new RuntimeException("Não foi Possível deletar pois o id é 0 ou inválido!  classe do registro:"+ model.getClass().getSimpleName() + " id do registro: "+model.getId());
            }
            model = em.find(persistedClass, model.getId());
            em.remove(model);
	}
	
	/**
	 * Traz um Registro pesquisando por id no banco de dados
	 * @param model
	 * @return
	 */
	public T selectPorId(T model) {
		
            int id = model.getId();
            model = em.find(this.persistedClass, model.getId());

            //Verifica se o Registro esta inativo no banco de dados caso inativo estoura uma exception
            if(model == null) {

                    throw new RuntimeException(
                                    "O Registro que tentou buscar, não existe no Banco de Dados! classe do registro:" + persistedClass.getSimpleName() + 
                                    " id do registro: "+id);
            }

            return model; //Sera retornado o registro encontrado, ou nulo, ou se tiver inativo estoura a exeption
		
	}
	
	/**
	 * @param model
	 * @return
	 * @throws RegistroInativoException
	 */
	public T selectPorIdAtivo(T model) throws Exception {
		
            model = em.find(this.persistedClass, model.getId());

            //Verifica se o Registro esta inativo no banco de dados caso inativo estoura uma exception
            if(model != null) {
                    if(!model.isAtivo()) {
                            throw new Exception(
                                            "O Registro que tentou buscar, esta inativo no Banco de Dados! classe do registro:" + model.getClass().getSimpleName() + 
                                            "O id do registro: "+model.getId());
                    }
            }

            return model; //Sera retornado o registro encontrado, ou nulo, ou se tiver inativo estoura a exeption
	}
	
	protected String stringFormaterSearch(String valor) {
		return valor.toUpperCase().trim()+"%";
	}
	
	
}
