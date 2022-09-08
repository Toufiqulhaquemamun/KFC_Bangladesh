import 'package:get/get.dart';

import '../../dal/daos/view_models/account_settings_viewmodel.dart';
import '../../dal/daos/view_models/account_viewmodel.dart';
import '../../dal/daos/view_models/menu_viewmodel.dart';
import '../../dal/daos/view_models/navigation_viewmodel.dart';

class NavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationViewModel>(() => NavigationViewModel());
    Get.lazyPut<MenuViewModel>(() => MenuViewModel());
    Get.lazyPut<AccountViewModel>(() => AccountViewModel());
    Get.lazyPut<AccountSettingsViewModel>(() => AccountSettingsViewModel());
  }
}
