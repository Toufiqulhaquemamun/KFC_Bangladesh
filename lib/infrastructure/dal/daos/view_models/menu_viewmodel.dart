import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuViewModel extends GetxController with SingleGetTickerProviderMixin {
  final List<Tab> _itemTabs = <Tab>[
    Tab(text: 'Deals'),
    Tab(text: 'Chicken'),
    Tab(text: 'Burgers'),
    Tab(text: 'Rice Bowls'),
    Tab(text: 'Snacks'),
    Tab(text: 'Beverages'),
    Tab(text: 'Addons'),
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
