import 'package:dio/dio.dart';
import 'package:sagacity/data/api_client_interface.dart';
import 'package:sagacity/data/models/product_model.dart';
import 'package:sagacity/data/network_resource.dart';
import 'package:dio/browser.dart';

import '../dimensions.dart';

const String adoreMeBaseUrl =
    'https://www.adoreme.com/v8/catalog/products/amid/';
const String sparkBaseUrl =
    'https://spark.adoreme.com/api/media/similar/product/';
const String retailApiBaseUrl = 'https://gateway.adoreme.com/retail/v1/';

class ApiClient implements ApiClientInterface {
  late Dio _dio;

  static ApiClient initialize() {
    BaseOptions options = BaseOptions(
      connectTimeout: defaultAPITimeOutDuration,
      receiveTimeout: defaultAPITimeOutDuration,
      contentType: 'application/json',
    );
    ApiClient repo = ApiClient();
    repo._dio = DioForBrowser(options);
    return repo;
  }

  @override
  Future<NetworkResource<ProductModel>> getProductDetails(String amid) async {
    try {
      final response = await _dio.get(
        adoreMeBaseUrl + amid,
      );
      return NetworkResource.success(
          data: ProductModel.fromJson(response.data as Map<String, dynamic>));
    } on DioException catch (dioError) {
      return NetworkResource.error(
          errorMessage: dioError.message,
          statusCode: dioError.response?.statusCode);
    }
  }

  @override
  Future<NetworkResource<List<String>>> getRetailApiResultsForQuery(
      String query) async {
    try {
      final response = await _dio.get(adoreMeBaseUrl + query);
      return NetworkResource.success(data: response.data as List<String>);
    } on DioException catch (dioError) {
      return NetworkResource.error(
          errorMessage: dioError.message,
          statusCode: dioError.response?.statusCode);
    }
  }

  @override
  Future<NetworkResource<List<String>>> getSparkResultsForQuery(
      String query) async {
    try {
      final response = await _dio.get(sparkBaseUrl + query);
      return NetworkResource.success(data: response.data as List<String>);
    } on DioException catch (dioError) {
      return NetworkResource.error(
          errorMessage: dioError.message,
          statusCode: dioError.response?.statusCode);
    }
  }
}
