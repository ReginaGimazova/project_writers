package models;

import javax.persistence.*;

@Entity
@Table(name = "advices")
public class Advice_model {

    @Id
    @Column(name = "advice_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long advice_id;

    @Column(name = "advice")
    private String advice;

    @ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.MERGE)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private User_model user;

    public User_model getUser(){
        return this.user;
    }


    public Advice_model() {
    }

    public Advice_model(String advice) {
        this.advice = advice;
    }

    public Long getAdvice_id() {
        return advice_id;
    }

    public void setAdvice_id(Long advice_id) {
        this.advice_id = advice_id;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }

    public void setUser(User_model user) {
        this.user = user;
    }
}
