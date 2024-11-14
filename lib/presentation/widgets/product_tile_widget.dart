import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sagacity/data/models/product_model.dart';

import '../../dimensions.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductModel product;
  const ProductTileWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            fit: BoxFit.cover,
            height: productTileHeight,
            width: productTileWidth,
            imageUrl: product.thumbnailUrl,
            errorWidget: (_, __, ___) => const Icon(
              Icons.image_not_supported_rounded,
              size: productTileWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: spacingS),
            child: Text(product.name),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: spacingXS),
          //   child: Text(product.amid),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: spacingXS),
          //   child: Text(product.bodyType),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: spacingXS),
          //   child: Text(product.inStock.toString()),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: spacingXS),
          //   child: Text(product.isNew.toString()),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: spacingXS),
          //   child: Text(product.color),
          // ),
        ],
      );
}
