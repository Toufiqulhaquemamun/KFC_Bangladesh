import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountViewModel extends GetxController
    with SingleGetTickerProviderMixin {
  final List<Tab> _itemTabs = <Tab>[
    Tab(text: 'Order History'),
    Tab(text: 'Account Settings'),
  ];

  late TabController _tabController;

  @override
  void onInit() {
    _initRequired();
    super.onInit();
  }

  TabController get tabController => _tabController;

  List<Tab> get itemTabs => _itemTabs;

  _initRequired() {
    _tabController = TabController(vsync: this, length: _itemTabs.length);
  }

  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }
}
