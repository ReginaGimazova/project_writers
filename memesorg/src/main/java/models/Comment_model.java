package models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comment")
public class Comment_model {

    @Id
    @Column(name = "id_comment")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long id_comment;

    @Column(name = "time_of_add_comment")
    public Date time;

    @Column(name = "comment")
    public String comment;

    @ManyToOne
    @JoinColumn(name = "user_id")
    public User_model user;

    @ManyToOne
    @JoinColumn(name = "work_id")
    public Work_model work;

    public Comment_model() {
    }

    public Comment_model(String comment, Date time){
        this.comment = comment;
        this.time = time;
    }

    public Work_model getWork(){
        return this.work;
    }

    public Comment_model(String comment) {
        this.comment = comment;
    }

    public User_model getUser(){
        return this.user;
    }
    public void setWork(Work_model work) {
        this.work = work;
    }

    public Long getId_comment() {
        return id_comment;
    }

    public void setId_comment(Long id_comment) {
        this.id_comment = id_comment;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public void setUser(User_model user) {
        this.user = user;
    }
}