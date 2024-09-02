import 'package:dio/dio.dart';

class ProductService {
  final Dio dio;

  ProductService(this.dio);
  final baseUrl = 'https://student.valuxapps.com/api/products';

  Future<Map<String, dynamic>> fetchProducts() async {
    final response = await dio.get(
      baseUrl,
    );
    return response.data;
  }
}
