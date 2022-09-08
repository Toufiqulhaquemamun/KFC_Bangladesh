import 'package:get/get.dart';

import 'local/database/database_service.dart';
import 'local/database/database_service_impl.dart';

Future<void> initServices() async {
  /// services
  await Get.putAsync<DatabaseService>(() async => DatabaseServiceImpl());

  /// api-services
}
