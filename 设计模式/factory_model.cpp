#include <iostream>
#include <memory>

// 抽象产品类
class Product {
public:
    virtual void use() = 0;
};

// 具体产品类 A
class ProductA : public Product {
public:
    void use() override {
        std::cout << "ProductA is used." << std::endl;
    }
};

// 具体产品类 B
class ProductB : public Product {
public:
    void use() override {
        std::cout << "ProductB is used." << std::endl;
    }
};

// 工厂类
class Factory {
public:
    virtual std::unique_ptr<Product> createProduct() = 0;
};

// 具体工厂类 A
class FactoryA : public Factory {
public:
    std::unique_ptr<Product> createProduct() override {
        return std::make_unique<ProductA>();
    }
};

// 具体工厂类 B
class FactoryB : public Factory {
public:
    std::unique_ptr<Product> createProduct() override {
        return std::make_unique<ProductB>();
    }
};

int main() {
    std::unique_ptr<Factory> factoryA = std::make_unique<FactoryA>();
    std::unique_ptr<Product> productA = factoryA->createProduct();
    productA->use();

    std::unique_ptr<Factory> factoryB = std::make_unique<FactoryB>();
    std::unique_ptr<Product> productB = factoryB->createProduct();
    productB->use();

    return 0;
}