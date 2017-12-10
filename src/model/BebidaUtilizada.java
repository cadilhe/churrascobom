
package model;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author cadilhe
 */
@Entity
public class BebidaUtilizada {
    
    @Id
    @GeneratedValue
    private Integer idBebidaUtilizada;
    private Float quantidade;
    private BigDecimal precoItem;
    
    // Relacionamento n:1 
    @ManyToOne
    private Churrasco churrasco;
    
    @ManyToOne
    private Bebida bebida;
    
    // Getters e Setters

    public Integer getIdBebidaUtilizada() {
        return idBebidaUtilizada;
    }

    public void setIdBebidaUtilizada(Integer idBebidaUtilizada) {
        this.idBebidaUtilizada = idBebidaUtilizada;
    }

    public Float getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Float quantidade) {
        this.quantidade = quantidade;
    }

    public BigDecimal getPrecoItem() {
        return precoItem;
    }

    public void setPrecoItem(BigDecimal precoItem) {
        this.precoItem = precoItem;
    }

    public Churrasco getChurrasco() {
        return churrasco;
    }

    public void setChurrasco(Churrasco churrasco) {
        this.churrasco = churrasco;
    }

    public Bebida getBebida() {
        return bebida;
    }

    public void setBebida(Bebida bebida) {
        this.bebida = bebida;
    }
    
    
    // To String

    @Override
    public String toString() {
        return this.bebida.getNome();
    }
    
    
    
  // Método específico para obter o preço total da bebida utilizada    
    public Float getPrecoTotal(){
        return precoItem.multiply(new BigDecimal(quantidade.toString())).floatValue();
    }
    
    
}
