import 'package:get/get.dart';

import '../../dal/daos/view_models/splash_viewmodel.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashViewModel>(() => SplashViewModel());
  }
}
