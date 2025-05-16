
import 'package:dio/dio.dart';

class ApiService {
  static String baseUrl = 'https://fakestoreapi.com/';
  final Dio _dio;

  ApiService(this._dio);

  Future<List<dynamic>> get(String endpoint) async {
    final response = await _dio.get('$baseUrl$endpoint');
    
    return response.data;
  }
}
