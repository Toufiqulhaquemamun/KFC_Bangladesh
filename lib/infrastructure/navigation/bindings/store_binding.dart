import 'package:get/get.dart';

import '../../dal/daos/view_models/store_viewmodel.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreViewModel>(() => StoreViewModel());
  }
}
