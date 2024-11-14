import 'package:get_it/get_it.dart';
import 'package:sagacity/data/api_client_interface.dart';

import 'data/api_client.dart';

GetIt locator = GetIt.instance;

Future<void> setupDependencies() async {
  ApiClientInterface apiClient = ApiClient.initialize();
  locator.registerSingleton<ApiClientInterface>(apiClient);
}
