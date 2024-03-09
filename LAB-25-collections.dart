class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

void main() {
  List<Product> cart = [];

  Product product1 = Product('iPhone', 12999.99, 1);
  Product product2 = Product('Headphones', 149.99, 2);
  cart.add(product1);
  cart.add(product2);

  double totalPrice = 0;
  for (var product in cart) {
    totalPrice += product.price * product.quantity;
  }
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  cart.remove(product2);
  print('Cart after removing a product: $cart');
}