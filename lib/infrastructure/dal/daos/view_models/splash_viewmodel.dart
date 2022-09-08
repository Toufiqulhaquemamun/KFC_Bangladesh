import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../presentation/screens/signin/signin_screen.dart';
import '../../services/local/database/database_service.dart';

class SplashViewModel extends GetxController {
  final _dbService = Get.find<DatabaseService>();
  late int _dotCount;
  late int _dotIndex;
  var _dotColor = <Color>[].obs;
  late Timer _timer;

  @override
  void onInit() {
    _initRequired();
    _initTimer();
    _initSession();
    super.onInit();
  }

  _initRequired() {
    _dotCount = 4;
    _dotIndex = 0;
    for (var i = 0; i < _dotCount; i++) {
      var c = (i == 0) ? Colors.white : Colors.white54;
      _dotColor.add(c);
    }
  }

  _moveToSignIn() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      _disposeTimer();
      Get.offAllNamed(SignInScreen.routeName);
    });
  }

  //
  // Future<void> _refreshToken(User user) async {
  //   debugPrint("Refreshing...");
  //   AesConfig aes = AesConfig();
  //   var _otpStatus = 'otp_verified';
  //   await _customerService.refreshCustomerData(aes, {
  //     "name": user.name,
  //     "phone": user.phone,
  //     "email": user.email,
  //     "deviceToken": user.deviceToken,
  //     "otpStatus": _otpStatus,
  //   });
  // }

  // _moveToHome(User user) async {
  //   await _refreshToken(user);
  //   await Future.delayed(const Duration(seconds: 3), () async {
  //     _disposeTimer();
  //     debugPrint("Moving to home...");
  //     Get.offAllNamed(HomeScreen.routeName);
  //   });
  // }

  Future<void> _initSession() async {
    debugPrint("Calling init...");
    var hasRecord = await _dbService.dbExists('user_local_data.db');
    if (hasRecord) {
      // var path = await _dbService.initDB('user_local_data.db');
      // await _userService.open(path);
      // var user = await _userService.getUser();
      // await _userService.close();
      // if (user == null) {
      //   await _moveToSignIn();
      // } else {
      //   await _moveToHome(user);
      // }
    } else {
      await _moveToSignIn();
    }
  }

  _initTimer() {
    _timer = Timer.periodic(
      Duration(milliseconds: 250),
      (Timer t) => _updateDotColor(),
    );
  }

  _disposeTimer() {
    _timer?.cancel();
  }

  _updateDotColor() {
    _dotIndex += 1;
    _dotIndex = _dotIndex < _dotCount ? _dotIndex : 0;
    for (var i = 0; i < _dotCount; i++) {
      _dotColor[i] = (i == _dotIndex) ? Colors.white : Colors.white54;
    }
  }

  int get dotCount => _dotCount;

  Color getDotColor(int i) => _dotColor[i];

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
