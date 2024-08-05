import 'eCommerce.dart';

class ProductManager {
  Map<String, Product> products = {};

  void addProduct(Product product) {
    if (products.containsKey(product.name)) {
      print('Product already exists.');
      return;
    }
    products[product.name] = product;
    print('Added Successfully.');
  }

  void viewAllProducts() {
    if (products.isEmpty) {
      print('No Products.');
      return;
    }
    products.forEach((name, product) {
      print(product);
    });
  }

  void viewSingleProduct(String name) {
    if (!products.containsKey(name)) {
      print('$name is Not Available.');
      return;
    }
    print(products[name]);
  }

  void editProduct(
      {required String name,
      String? newName,
      String? newDescription,
      double? newPrice}) {
    if (!products.containsKey(name)) {
      print('No product is found by this name ($name).');
      return;
    }
    var product = products[name]!;
    if (newName != null) {
      products.remove(name);
      product.name = newName;
      products[newName] = product;
    }
    if (newDescription != null) {
      product.description = newDescription;
    }
    if (newPrice != null) {
      product.price = newPrice;
    }
    print('Product updated successfully.');
  }

  void deleteProduct(String name) {
    if (!products.containsKey(name)) {
      print('Product not found.');
      return;
    }
    products.remove(name);
    print('Product deleted successfully.');
  }
}
