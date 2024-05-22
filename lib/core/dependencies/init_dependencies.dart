
import 'package:fake_store/features/shop/data/datasources/product_data.dart';
import 'package:fake_store/features/shop/data/repositories/product_repo_impl.dart';
import 'package:fake_store/features/shop/domain/repositories/product_repository.dart';
import 'package:fake_store/features/shop/domain/usecases/get_all_products.dart';
import 'package:fake_store/features/shop/presentation/bloc/home_bloc/shop_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
 _initShop();
}

void _initShop() {
  serviceLocator
      .registerFactory<ProductDataSource>(() => ProductDataSourceImpl());

  serviceLocator.registerFactory<ProductRepository>(
      () => ProductRepositoryImpl(serviceLocator()));
      
  serviceLocator.registerFactory(() => GetAllProducts(serviceLocator()));

  // We ae using LazySIngleton because we always want the same object , otherwiseeour state will be lost
  serviceLocator.registerLazySingleton(() => ShopBloc(serviceLocator()));

}
