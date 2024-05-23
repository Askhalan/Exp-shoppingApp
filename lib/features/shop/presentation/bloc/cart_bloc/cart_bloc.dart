
import 'package:equatable/equatable.dart';
import 'package:fake_store/features/shop/domain/entities/product_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  Map<Product, int> cart = {};
  CartBloc() : super(CartInitial()) {
    on<AddProductToCart>((event, emit) {

      //Uses the update method of the map to either increment the product's quantity if it exists or add it with a quantity of 1 if it doesn't.
      // update takes three parameters:
      // The key to update (event.product).
      // A function that defines how to update the value if the key is found ((quantity) => quantity + 1).
      // An optional ifAbsent parameter that defines how to insert the value if the key is not found (() => 1).
      
      cart.update(event.product, (quantity) => quantity + 1, ifAbsent: () => 1);
    });

    on<RemoveProductFromCart>((event, emit) {
  if (cart.containsKey(event.product)) {
    if (cart[event.product]! > 1) {
      cart[event.product] = cart[event.product]! - 1;
    } else {
      cart.remove(event.product);
    }
  }
});

  }

}
