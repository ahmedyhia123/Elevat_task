import 'package:dartz/dartz.dart';
import 'package:elevat_task/Core/errors/failure.dart';
import 'package:elevat_task/Features/home/presentation/data/models/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> getGetProducts();
}