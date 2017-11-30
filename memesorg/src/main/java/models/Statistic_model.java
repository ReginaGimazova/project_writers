package models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "statistic")
public class Statistic_model {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long id;

    @Column(name = "likes")
    public Integer likes;

    @Column(name = "dislikes")
    public Integer dislikes;

    @ManyToOne
    @JoinColumn(name = "id_work")
    public Work_model work;


    public Work_model getWork(){
        return this.work;
    }

    public void setWork(Work_model work) {
        this.work = work;
    }

    public Long getId_work() {
        return id;
    }

    public void setId_work(Long id) {
        this.id = id;
    }

    public Integer getLikes() {
        return likes;
    }

    public void setLikes(Integer likes) {
        this.likes = likes;
    }

    public Integer getDislikes() {
        return dislikes;
    }

    public void setDislikes(Integer dislikes) {
        this.dislikes = dislikes;
    }
}