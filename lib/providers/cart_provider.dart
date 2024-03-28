import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

// Notifier Providers
// use when you need to update the state & notify consumers

class CartNotifier extends Notifier<Set<Product>> {
  
  @override
  Set<Product> build() {
    return const {
      Product(id: '4', title: 'Red Backpack', price: 14, image: 'assets/products/backpack.png'),
    };
  }

  // methods to update state

}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});