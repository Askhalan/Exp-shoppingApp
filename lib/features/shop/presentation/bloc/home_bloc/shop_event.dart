part of 'shop_bloc.dart';

abstract class ShopEvent {
  const ShopEvent();

}
final class ShopLoadingProducts extends ShopEvent{}
final class ShopFetchAllProducts extends ShopEvent{}
