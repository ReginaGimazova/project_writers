package DAO;

import models.User_model;
import models.Work_model;

import java.util.List;

public interface WorkDAO {
    public void addWork(Work_model work_model);
    public void save(Work_model work_model);
    public void update(Work_model work_model);
    public void delete(Long work_id);
    public Work_model find(Long work_id);
    public Work_model findByName(String name);
    public List<Work_model> findAll();
}
