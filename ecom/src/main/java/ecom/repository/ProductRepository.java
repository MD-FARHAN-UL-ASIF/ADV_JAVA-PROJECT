package ecom.repository;

import ecom.domain.Address;
import ecom.domain.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class ProductRepository {
    private SessionFactory sessionFactory;

    public ProductRepository(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Product> list() {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<Product> productTypedQuery = session.createQuery("from Product", Product.class);
        return productTypedQuery.getResultList();
    }

    public boolean create(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.save(product);
        return true;
    }

    public Product get(Long id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Product.class, id);
    }

    public boolean update(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.update(product);
        return true;
    }

    public boolean delete(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
        return true;
    }
}
