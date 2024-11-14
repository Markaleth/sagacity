import 'package:sagacity/data/models/product_model.dart';
import 'package:sagacity/data/network_resource.dart';

abstract interface class ApiClientInterface {
  Future<NetworkResource<ProductModel>> getProductDetails(String amid);
  Future<NetworkResource<List<String>>> getSparkResultsForQuery(String query);
  Future<NetworkResource<List<String>>> getRetailApiResultsForQuery(
      String query);
}
