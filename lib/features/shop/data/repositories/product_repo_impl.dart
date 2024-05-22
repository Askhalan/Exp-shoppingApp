// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:fpdart/src/either.dart';

import 'package:fake_store/features/shop/data/datasources/product_data.dart';
import 'package:fake_store/features/shop/domain/entities/product_entity.dart';
import 'package:fake_store/features/shop/domain/repositories/product_repository.dart';
import 'package:fake_store/utils/exceptions/failure.dart';

class ProductRepositoryImpl extends ProductRepository {
  ProductDataSource productDataSource ;
  ProductRepositoryImpl(
    this.productDataSource,
  );
  @override
  Future<Either<Failure, List<Product>>> getAllProducts() async {
    try {
      final products = await productDataSource.getAllProducts();
      log(products.toString());
      return right(products);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
