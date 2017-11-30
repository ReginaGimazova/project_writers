package models;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "work")
public class Work_model {

    @Id
    @Column(name = "id_work")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long id_work;

    @Column(name = "name_work")
    public String name_work;

    @Column(name = "short_description")
    public String short_description;

    @Column(name = "text_of_work")
    public String text;

    @Column(name = "date_of_add_work")
    public Date date;

    @Column(name = "poetry_or_prose")
    public String genre;

    @ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private User_model user;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "work")
    private Set<Comment_model> comments;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "work")
    private Set<Statistic_model> statistic;

    public Set<Comment_model> getComments(){
        return this.comments;
    }

    public Set<Statistic_model> getStatistic(){
        return this.statistic;
    }

    public void setStatistic(Set<Statistic_model> statistics) {
        this.statistic = statistics;
    }

    public Work_model() {
    }

    public Work_model(String name_work, String short_description, String text, Date date, String genre) {
        this.name_work = name_work;
        this.short_description = short_description;
        this.text = text;
        this.date = date;
        this.genre = genre;
    }

    public User_model getUser(){
        return this.user;
    }

    public void setComments(Set<Comment_model> comments) {
        this.comments = comments;
    }

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

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setUser(User_model user) {
        this.user = user;
    }
}
