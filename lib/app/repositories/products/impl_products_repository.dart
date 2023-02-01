// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dartweek/app/core/exceptions/repository_exception.dart';
import 'package:dartweek/app/core/rest_client/custom_dio.dart';
import 'package:dartweek/app/model/product_model.dart';
import 'package:dio/dio.dart';

import './products_repository.dart';

class ImplProductsRepository implements ProductsRepository {
  final CustomDio dio;
  ImplProductsRepository({
    required this.dio,
  });
  @override
  Future<List<ProductModel>> findAll() async {
    try {
      final result = await dio.unauth().get('/products');

      return result.data.map<ProductModel>((p) => ProductModel.fromMap(p)).toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar produtos', error: e, stackTrace: s);
      throw RepositoryException(message: "Erro ao buscar produtos");
    }
  }
}
