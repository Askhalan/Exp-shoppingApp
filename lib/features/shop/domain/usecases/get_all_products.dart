//to give a proper structure to Uses cases , Like to set a proper boundary.

import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/features/shop/domain/entities/product_entity.dart';
import 'package:fake_store/features/shop/domain/repositories/product_repository.dart';
import 'package:fake_store/utils/exceptions/failure.dart';
import 'package:fpdart/fpdart.dart';


class GetAllProducts implements UseCase<List<Product>,NoParams > {
  final ProductRepository productRepository;
  GetAllProducts(this.productRepository);

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
   return await productRepository.getAllProducts();
  }

}

class NoParams {}
