import 'package:dartweek/app/core/ui/base_state/base_state.dart';
import 'package:dartweek/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dartweek/app/pages/home/home_controller.dart';
import 'package:dartweek/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:dartweek/app/pages/home/widgets/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: BlocConsumer<HomeController, HomeState>(
        listener: (context, state) {
          state.status.matchAny(
            any: (() => hideLoader()),
            loading: () => showLoader(),
            error: () {
              hideLoader();
              showError(state.errorMessage ?? ' Erro');
            },
          );
        },
        buildWhen: ((previous, current) => current.status.matchAny(
              any: (() => false),
              initial: (() => true),
              loaded: (() => true),
            )),
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    return DeliveryProductTile(product: product);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void onReady() {
    controller.loadProducts();
  }
}
