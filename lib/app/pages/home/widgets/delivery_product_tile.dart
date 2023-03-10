import 'package:dartweek/app/core/extensions/formatter_extensions.dart';
import 'package:dartweek/app/core/ui/styles/colors_app.dart';
import 'package:dartweek/app/core/ui/styles/text_styles.dart';
import 'package:dartweek/app/model/product_model.dart';
import 'package:flutter/material.dart';

class DeliveryProductTile extends StatelessWidget {
  final ProductModel product;
  const DeliveryProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Text(
                    product.name,
                    style: context.textStyles.textExtraBold.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Text(
                    product.description,
                    style: context.textStyles.textRegular.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Text(
                    product.price.currencyPTBR,
                    style: context.textStyles.textExtraBold.copyWith(fontSize: 12, color: context.colors.secondary),
                  ),
                )
              ],
            ),
          ),
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: product.image,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
