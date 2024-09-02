import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ieee_meeting/services/product_service.dart';

import '../models/product_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<List<ProductModel>> fetchProduct() async {
    List<ProductModel> product =[];
    final result = await ProductService(Dio()).fetchProducts();
    for ( var item in result["data"]["data"]){
      product.add(ProductModel.fromJson(item));
    }
    return product;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ProductModel>>(future: fetchProduct(), builder: ),
    );
  }
}
