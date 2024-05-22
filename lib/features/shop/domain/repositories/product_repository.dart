import 'package:fake_store/features/shop/domain/entities/product_entity.dart';
import 'package:fake_store/utils/exceptions/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class ProductRepository {
 Future< Either<Failure,List<Product>>> getAllProducts();
}