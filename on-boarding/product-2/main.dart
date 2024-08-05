import 'dart:io';

import 'eCommerce.dart';
import 'productManager.dart';

void main() {
  var productManager = ProductManager();
  while (true) {
    print('1. Add Product');
    print('2. View All Products');
    print('3. View Single Product');
    print('4. Edit Product');
    print('5. Delete Product');
    print('6. Exit');
    stdout.write('Enter your choice: ');
    var choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        stdout.write('Enter product name: ');
        var name = stdin.readLineSync();
        stdout.write('Enter product description: ');
        var description = stdin.readLineSync();
        stdout.write('Enter product price: ');
        var price = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
        productManager.addProduct(Product(name!, description!, price));
        break;
      case '2':
        productManager.viewAllProducts();
        break;
      case '3':
        stdout.write('Enter product name: ');
        var name = stdin.readLineSync();
        productManager.viewSingleProduct(name!);
        break;
      case '4':
        stdout.write('Enter existing product name: ');
        var name = stdin.readLineSync();
        stdout
            .write('Enter new product name (leave blank to keep unchanged): ');
        var newName = stdin.readLineSync();
        stdout.write(
            'Enter new product description (leave blank to keep unchanged): ');
        var newDescription = stdin.readLineSync();
        stdout
            .write('Enter new product price (leave blank to keep unchanged): ');
        var newPriceInput = stdin.readLineSync();
        double? newPrice = newPriceInput != null && newPriceInput.isNotEmpty
            ? double.tryParse(newPriceInput)
            : null;
        productManager.editProduct(
          name: name!,
          newName: newName?.isEmpty ?? true ? null : newName,
          newDescription:
              newDescription?.isEmpty ?? true ? null : newDescription,
          newPrice: newPrice,
        );
        break;
      case '5':
        stdout.write('Enter product name: ');
        var name = stdin.readLineSync();
        productManager.deleteProduct(name!);
        break;
      case '6':
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
