import 'package:get/get.dart';

import '../../dal/daos/view_models/home_viewmodel.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
  }
}
