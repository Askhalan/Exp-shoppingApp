part of 'cart_bloc.dart';

class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddProductToCart extends CartEvent {
  final Product product;
  const AddProductToCart(this.product);
}

class RemoveProductFromCart extends CartEvent {
  final Product product;
  const RemoveProductFromCart(this.product);
}
