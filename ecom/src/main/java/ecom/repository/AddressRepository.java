package ecom.repository;

import ecom.domain.Address;
import ecom.domain.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class AddressRepository {
    private SessionFactory sessionFactory;

    public AddressRepository(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Address> list() {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<Address> addressTypedQuery = session.createQuery("from Address", Address.class);
        return addressTypedQuery.getResultList();
    }

    public boolean create(Address address) {
        Session session = sessionFactory.getCurrentSession();
        session.save(address);
        return true;
    }

    public Address get(Long id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Address.class, id);
    }

    public boolean update(Address address) {
        Session session = sessionFactory.getCurrentSession();
        session.update(address);
        return true;
    }

    public boolean delete(Address address) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(address);
        return true;
    }
}
