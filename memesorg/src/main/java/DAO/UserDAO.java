package DAO;

import models.User_model;

import java.util.List;

public interface UserDAO {
    public void addUSer(User_model user);
    public void save(User_model user);
    public void update(User_model user);
    public void delete(Long id);
    public User_model find(Long id);
    public User_model findByUsername(String username);
    public List<User_model> findAll();
}
