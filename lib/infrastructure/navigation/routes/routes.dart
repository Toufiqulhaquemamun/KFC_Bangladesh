import 'package:get/get.dart';

import '../../../presentation/screens/home/home_screen.dart';
import '../../../presentation/screens/navigation/navigation_screen.dart';
import '../../../presentation/screens/otp/otp_screen.dart';
import '../../../presentation/screens/signin/signin_screen.dart';
import '../../../presentation/screens/splash/splash_screen.dart';
import '../../../presentation/screens/store/store_screen.dart';
import '../bindings/home_binding.dart';
import '../bindings/navigation_binding.dart';
import '../bindings/otp_binding.dart';
import '../bindings/signin_binding.dart';
import '../bindings/splash_binding.dart';
import '../bindings/store_binding.dart';



class Routes {
  static const String splash = SplashScreen.routeName;
  static const String home = HomeScreen.routeName;
  static const String sign_in = SignInScreen.routeName;
  static const String otp = OtpScreen.routeName;
  static const String store = StoreScreen.routeName;
  static const String navigation = NavigationScreen.routeName;

  static var pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.sign_in,
      page: () => SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.otp,
      page: () => OtpScreen(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: Routes.store,
      page: () => StoreScreen(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.navigation,
      page: () => NavigationScreen(),
      binding: NavigationBinding(),
    ),
  ];
}
