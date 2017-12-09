/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author cadilhe
 */
@Entity
@Table(name = "convidado", catalog = "churrascobom", schema = "")
@NamedQueries({
    @NamedQuery(name = "Convidado.findAll", query = "SELECT c FROM Convidado c")
    , @NamedQuery(name = "Convidado.findByIdconvidado", query = "SELECT c FROM Convidado c WHERE c.idconvidado = :idconvidado")
    , @NamedQuery(name = "Convidado.findByNome", query = "SELECT c FROM Convidado c WHERE c.nome = :nome")
    , @NamedQuery(name = "Convidado.findByTelefone", query = "SELECT c FROM Convidado c WHERE c.telefone = :telefone")})
public class Convidado implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idconvidado")
    private Integer idconvidado;
    
    
    @Column(name = "nome")
    private String nome;
    
    
    @Column(name = "telefone")
    private String telefone;
    
    /** 
     * Relacionamento de muitos para muitos entre esta classe e a classe Churrasco
     * Mapeia esta lista de churrascos com  a lista de convidados criada na classe Churrasco
     */    
    @ManyToMany(mappedBy = "convidados") 
    private List<Churrasco> churrascos = new ArrayList();

    
    // Construtores
    
    public Convidado() {
    }

    public Convidado(Integer idconvidado) {
        this.idconvidado = idconvidado;
    }

   
    // Getters e Setters
    public Integer getIdconvidado() {
        return idconvidado;
    }

    public void setIdconvidado(Integer idconvidado) {
        Integer oldIdconvidado = this.idconvidado;
        this.idconvidado = idconvidado;
        changeSupport.firePropertyChange("idconvidado", oldIdconvidado, idconvidado);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        String oldNome = this.nome;
        this.nome = nome;
        changeSupport.firePropertyChange("nome", oldNome, nome);
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        String oldTelefone = this.telefone;
        this.telefone = telefone;
        changeSupport.firePropertyChange("telefone", oldTelefone, telefone);
    }

    public List<Churrasco> getChurrascos() {
        return churrascos;
    }
    
      

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idconvidado != null ? idconvidado.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Convidado)) {
            return false;
        }
        Convidado other = (Convidado) object;
        if ((this.idconvidado == null && other.idconvidado != null) || (this.idconvidado != null && !this.idconvidado.equals(other.idconvidado))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        // return "view.Convidado[ idconvidado=" + idconvidado + " ]";
        return nome; // Exibir apenas o nome no COMBO BOX de JCadChurrasco
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
    
    // Métodos específicos de manipulaçao dos objetos da classe Churrasco
    
    public void addChurrasco(Churrasco c){
        churrascos.add(c);
    }
    
    public void removeChurrasco(Churrasco c){
        churrascos.remove(c);
    }
    
    public Churrasco getChurrasco(int index){
        return churrascos.get(index);
    }
    
    public int sizeOfChurrasco(){
        return churrascos.size();
    }
    
    
    
}
