package ecom.repository;

import ecom.domain.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.sql.*;
import java.util.List;

@Repository
public class UserRepository {
    private SessionFactory sessionFactory;

    public UserRepository(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<User> list() {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<User> departmentQuery = session.createQuery("from User", User.class);
        return departmentQuery.getResultList();
    }

    public boolean create(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.save(user);
        return true;
    }

    public User get(Long id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(User.class, id);
    }

    public boolean update(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
        return true;
    }

    public boolean delete(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(user);
        return true;
    }
}
