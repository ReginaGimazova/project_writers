package models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "statistic")
public class Statistic_model {

    @Id
    @Column(name = "id_work")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id_work;

    @Column(name = "likes")
    private Integer likes;

    public Long getId_work() {
        return id_work;
    }

    public void setId_work(Long id_work) {
        this.id_work = id_work;
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

    @Column(name = "dislikes")

    private Integer dislikes;
}