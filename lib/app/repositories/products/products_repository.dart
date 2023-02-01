import 'package:dartweek/app/model/product_model.dart';

abstract class ProductsRepository {
  Future<List<ProductModel>> findAll();
}
