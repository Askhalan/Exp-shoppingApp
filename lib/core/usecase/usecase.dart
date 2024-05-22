// We limit the usecse to have on function , because uses_cases are supposed to do one task.
//expose a high level functionality


import 'package:fake_store/utils/exceptions/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType,Params >{
  Future<Either<Failure , SuccessType >> call(Params params);
}