import 'package:get/get.dart';

import '../../dal/daos/view_models/signin_viewmodel.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInViewModel>(() => SignInViewModel());
  }
}
