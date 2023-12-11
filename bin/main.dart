void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  print('\nOriginal Fruit Details before Discount:');
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10);
  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> f) {
  for (final i in f) {
    print("Name: ${i['name']}, Color: ${i['color']}, Price: \$${i['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> f, double discount) {
  for (final i in f) {
    double realPrice = i['price'];
    double discountAmount = (discount / 100) * realPrice;
    i['price'] = realPrice - discountAmount;
  }
}
