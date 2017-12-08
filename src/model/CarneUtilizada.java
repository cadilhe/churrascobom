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
public class CarneUtilizada {
    
    @Id
    @GeneratedValue
    private Integer idCarneUtilizada;
    
    private float quantidade;
    
    private BigDecimal precoItem;
    
    // Relacionamento n:1 
    @ManyToOne // MUITA carne pode ser utilizada em UM churrasco
    private Churrasco churrasco;
    
    @ManyToOne // Pode se utilizar VÁRIAS carne de UM churrasco
    private Carne carne;
    
    // Getters e Setters

    public Integer getIdCarneUtilizada() {
        return idCarneUtilizada;
    }

    public void setIdCarneUtilizada(Integer idCarneUtilizada) {
        this.idCarneUtilizada = idCarneUtilizada;
    }

    public float getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(float quantidade) {
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

    public void setChurasco(Churrasco churasco) {
        this.churrasco = churasco;
    }

    public Carne getCarne() {
        return carne;
    }

    public void setCarne(Carne carne) {
        this.carne = carne;
    }
    
    // Método específico para obter o preço total da bebida utilizada    
//    public Float getPrecoTotal(){
//        return precoItem.multiply(new BigDecimal(quantidade.toString())).floatValue();
//    }
    
    
    
}
