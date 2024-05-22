part of 'shop_bloc.dart';

abstract class ShopState {
  const ShopState();
}

class ShopInitialState extends ShopState {
  ShopInitialState() : super();
}

final class SuccessfullyFetchedAllProducts extends ShopState {}

final class LoadingFetchedAllProducts extends ShopState {}

final class FailedFetchedAllProducts extends ShopState {
  final String error;
  FailedFetchedAllProducts(this.error);
}
