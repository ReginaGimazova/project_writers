package DAO.interfaces_DAO;


import java.util.List;

public interface CrudDao<M, I, S> {
    void add(M model);
    void save(M model);
    void update(M model);
    void delete(I id);
    M find(I id);
    M findByName(S name);
    List<M> findAll();
}
