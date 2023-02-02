import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:app_delivery/app/core/exceptions/repository_exception.dart';
import 'package:app_delivery/app/core/rest_client/custom_dio.dart';
import 'package:app_delivery/app/models/product_model.dart';

import './products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustomDio dio;
  ProductsRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get('/products');
      return result.data
          .map<ProductModel>(
            (p) => ProductModel.fromMap(p),
          )
          .toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar produtos', error: e, stackTrace: s);
      throw RepositoryExcepetion(message: 'Erro ao buscar produtos');
    }
  }
}