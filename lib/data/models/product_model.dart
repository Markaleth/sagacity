import '../../dimensions.dart';

class ProductModel {
  late final int id;
  late final String name;
  late final String amid;
  late final String color;
  late final String bodyType;
  late final List<String> sizes;
  late final String category;
  late final List<int> categoryIds;
  late final String thumbnailUrl;
  late final bool inStock;
  late final bool isNew;

  ProductModel._internal();

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    ProductModel product = ProductModel._internal();
    List<Map<String, dynamic>> gallery =
        List<Map<String, dynamic>>.from(json['gallery']);
    product.id = json['id'];
    product.name = json['name'];
    product.amid = json['amid'];
    product.color = json['color'];
    product.bodyType = json['body_type'];
    product.sizes = List<String>.from(json['sizes']);
    product.category = json['category'];
    product.categoryIds = List<int>.from(json['category_ids']);
    product.thumbnailUrl = _getThumbnailUrl(gallery);
    product.inStock = json['in_stock'];
    product.isNew = json['is_new'];
    return product;
  }

  static String _getThumbnailUrl(List<Map<String, dynamic>> galleryJson) =>
      galleryJson[0]['url'].replaceAll('{{width}}', '$productTileWidth');
}
