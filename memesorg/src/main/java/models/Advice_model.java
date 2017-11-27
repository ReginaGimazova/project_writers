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

    @Column(name = "user_id")
    private String user_id;

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

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
}
