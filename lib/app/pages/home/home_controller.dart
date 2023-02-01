// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartweek/app/pages/home/widgets/home_state.dart';
import 'package:dartweek/app/repositories/products/products_repository.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _repository;
  HomeController(
    this._repository,
  ) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));

    try {
      final products = await _repository.findAll();
      emit(state.copyWith(status: HomeStateStatus.loaded, products: products));
    } catch (e, s) {
      log('Erro ao buscar', error: e, stackTrace: s);
      emit(
        state.copyWith(errorMessage: "Erro ao buscar produtos", status: HomeStateStatus.error),
      );
    }
  }
}
