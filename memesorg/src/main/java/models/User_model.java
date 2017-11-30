package models;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "user_table")
public class User_model {

    @Id
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long id;

    @Column(name = "username")
    public String username;

    @Column(name = "email")
    public String email;

    @Column(name = "login")
    public String login;

    @Column(name = "password")
    public String password;

    @Column(name = "password_confirm")
    public String password_confirm;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Set<Work_model> works;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Set<Advice_model> advices;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Set<Comment_model> comments;

    public Set<Work_model> getWorks(){
        return this.works;
    }
    public Set<Comment_model> getComments(){
        return this.comments;
    }
    public Set<Advice_model> getAdvices(){
        return this.advices;
    }


    public void setWorks(Set<Work_model> works){
        this.works = works;
    }

    public void setComments(Set<Comment_model> comments) {
        this.comments = comments;
    }

    public void addComments(Comment_model comment){
        comment.setUser(this);
        this.comments.add(comment);
    }

    public void addWorks(Work_model work){
        work.setUser(this);
        this.works.add(work);
    }

    public void setAdvices(Set<Advice_model> advices) {
        this.advices = advices;
    }

    public void addAdvices(Advice_model advice){
        advice.setUser(this);
        this.advices.add(advice);
    }

    public User_model(String username, String email, String login, String password, String password_confirm) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.password_confirm = password_confirm;
        this.login = login;
    }

    public User_model() {
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public String getPassword_confirm() {
        return password_confirm;
    }

    public void setPassword_confirm(String password_confirm) {
        this.password_confirm = password_confirm;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setId(Long id) {
        this.id = id;
    }
}

