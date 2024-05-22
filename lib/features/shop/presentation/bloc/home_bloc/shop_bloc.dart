

import 'package:fake_store/features/shop/domain/entities/product_entity.dart';
import 'package:fake_store/features/shop/domain/usecases/get_all_products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  List<Product> products = [];
  final GetAllProducts getAllProducts;


  ShopBloc(this.getAllProducts) : super(ShopInitialState()) {
    on<ShopFetchAllProducts>(_onFetchAllProducts);
  }

  void _onFetchAllProducts(
      ShopFetchAllProducts event, Emitter<ShopState> emit) async {
    final res = await getAllProducts(NoParams());

    res.fold((l){
  
      emit(FailedFetchedAllProducts(l.message));
    }, (r) {
      products.clear();
      products.addAll(r);
      emit(SuccessfullyFetchedAllProducts());
    });
  }
}
