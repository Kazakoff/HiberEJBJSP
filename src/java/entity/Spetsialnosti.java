package entity;
// Generated 30.03.2018 11:03:23 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Spetsialnosti generated by hbm2java
 */
@Entity
@Table(name="spetsialnosti"
    ,catalog="dek"
)
public class Spetsialnosti  implements java.io.Serializable {


     private Integer kodSpets;
     private String nazvanie;
     private List<Uchebnyieplanyi> uchebnyieplanyis;

    public Spetsialnosti() {
    }

	
    public Spetsialnosti(String nazvanie) {
        this.nazvanie = nazvanie;
    }
    public Spetsialnosti(String nazvanie, List<Uchebnyieplanyi> uchebnyieplanyis) {
       this.nazvanie = nazvanie;
       this.uchebnyieplanyis = uchebnyieplanyis;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="KodSpets", unique=true, nullable=false)
    public Integer getKodSpets() {
        return this.kodSpets;
    }
    
    public void setKodSpets(Integer kodSpets) {
        this.kodSpets = kodSpets;
    }

    
    @Column(name="Nazvanie", nullable=false, length=100)
    public String getNazvanie() {
        return this.nazvanie;
    }
    
    public void setNazvanie(String nazvanie) {
        this.nazvanie = nazvanie;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="spetsialnosti")
    public List<Uchebnyieplanyi> getUchebnyieplanyis() {
        return this.uchebnyieplanyis;
    }
    
    public void setUchebnyieplanyis(List<Uchebnyieplanyi> uchebnyieplanyis) {
        this.uchebnyieplanyis = uchebnyieplanyis;
    }




}


