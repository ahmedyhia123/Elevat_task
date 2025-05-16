import 'package:dio/dio.dart';
import 'package:elevat_task/Core/servises/api_service.dart';
import 'package:elevat_task/Features/home/presentation/data/repo/home_repo_impl.dart';
import 'package:get_it/get_it.dart';



final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt<Dio>()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt<ApiService>()));
  
}
