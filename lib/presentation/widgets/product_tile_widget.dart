import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sagacity/data/models/product_model.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductModel product;
  const ProductTileWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          CachedNetworkImage(imageUrl: product.thumbnailUrl),
          Text(product.name),
          Text(product.amid),
          Text(product.bodyType),
          Text(product.inStock.toString()),
          Text(product.isNew.toString()),
          Text(product.color),
        ],
      );
}
