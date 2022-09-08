import 'package:get/get.dart';

import '../../dal/daos/view_models/otp_viewmodel.dart';

class OtpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpViewModel>(() => OtpViewModel());
  }
}
