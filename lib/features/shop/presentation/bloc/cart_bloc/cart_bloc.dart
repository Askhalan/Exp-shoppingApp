import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fake_store/features/shop/domain/entities/product_entity.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  Map<Product , int> cart ={};
  CartBloc() : super(CartInitial()) {
    on<CartEvent>((event, emit) {
     
    });
  }
}
