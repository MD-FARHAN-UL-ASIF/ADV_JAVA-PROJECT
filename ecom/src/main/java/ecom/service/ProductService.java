package ecom.service;

import ecom.domain.Address;
import ecom.domain.Product;
import ecom.repository.AddressRepository;
import ecom.repository.ProductRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.logging.Logger;

@Service
@Transactional
public class ProductService {

    private Logger logger = Logger.getLogger(ProductService.class.getName());

    private ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> list() {
        return productRepository.list();
    }

    public Product get(Long id) {
        return productRepository.get(id);
    }

    public boolean create(Product product) {
        return productRepository.create(product);
    }

    public boolean update(Product product) {
        return productRepository.update(product);
    }

    public boolean delete(Long id) {
        return productRepository.delete(get(id));
    }
}
