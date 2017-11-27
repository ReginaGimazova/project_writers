package models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comment")
public class Comment_model {

    @Id
    @Column(name = "id_comment")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id_comment;

    @Column(name = "time_of_add_comment")
    private Date time;

    @Column(name = "comment")
    private String comment;

    @Column(name = "user_id")
    private Long user_id;

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

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Long getWork_id() {
        return work_id;
    }

    public void setWork_id(Long work_id) {
        this.work_id = work_id;
    }

    @Column(name = "work_id")
    private Long work_id;
}