package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "mi goi", 5000, "vi bo", "VN"));
        productList.add(new Product(2, "xa phong", 25000, "780ml", "VN"));
        productList.add(new Product(3, "dau an", 45000, "1 li", "VN"));
        productList.add(new Product(4, "dau goi", 30000, "650ml", "VN"));

    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }

    @Override
    public void update(int id, Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (id == productList.get(i).getId()) {
               productList.get(i).setId(id);
               productList.get(i).setNameOfProduct(product.getNameOfProduct());
               productList.get(i).setPrice(product.getPrice());
               productList.get(i).setDescription(product.getDescription());
               productList.get(i).setMadeIn(product.getMadeIn());
            }
        }
    }

    @Override
    public void delete(int id) {
        for (int i = 0; i <productList.size() ; i++) {
            if (id == productList.get(i).getId()) {
                productList.remove(productList.get(i));
            }
        }
    }

    @Override
    public Product findById(int id) {
        for (int i = 0; i <productList.size() ; i++) {
            if (id == productList.get(i).getId()) {
                return productList.get(i);
            }
        }
        return null;
    }

    @Override
    public Product findByName(String name) {
        for (int i = 0; i <productList.size() ; i++) {
            if (productList.get(i).getNameOfProduct().equals(name)) {
                return productList.get(i);
            }
        }
        return null;
    }
}
