package models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "work")
public class Work_model {

    @Id
    @Column(name = "id_work")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id_work;

    @Column(name = "name_work")
    private String name_work;

    @Column(name = "short_description")
    private String short_description;

    @Column(name = "text_of_work")
    private String text;

    @Column(name = "date_of_add_work")
    private Date date;

    @Column(name = "poetry_or_prose")
    private boolean genre;

    public Long getId_work() {
        return id_work;
    }

    public void setId_work(Long id_work) {
        this.id_work = id_work;
    }

    public String getName_work() {
        return name_work;
    }

    public void setName_work(String name_work) {
        this.name_work = name_work;
    }

    public String getShort_description() {
        return short_description;
    }

    public void setShort_description(String short_description) {
        this.short_description = short_description;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isGenre() {
        return genre;
    }

    public void setGenre(boolean genre) {
        this.genre = genre;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    @Column(name = "user_id")
    private Long user_id;
}
