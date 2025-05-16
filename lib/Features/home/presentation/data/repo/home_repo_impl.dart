import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:elevat_task/Core/errors/failure.dart';
import 'package:elevat_task/Core/errors/server_failure.dart';
import 'package:elevat_task/Core/servises/api_service.dart';
import 'package:elevat_task/Features/home/presentation/data/models/product_model.dart';
import 'package:elevat_task/Features/home/presentation/domin/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> getGetProducts() async {
    
    try {
      final response = await apiService.get('products');
      log('getGetProducts');
      final List<ProductModel> products = [];
      for (var item in response) {
        
        products.add(ProductModel.fromJson(item));
      }
      
      return Right(products);
    } catch (e) {
      log(e.toString());
      return Left(ServerFailure());
    }
  }
}
