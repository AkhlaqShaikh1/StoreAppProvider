import 'dart:core';

import 'package:flutter/material.dart';

class StoreController extends ChangeNotifier {
  String storeName = "Store Name";
  int followerCount = 0;
  bool storeStatus = true;

  updateName(name) {
    storeName = name;
  }

  incrementFollowers() {
    followerCount++;
    notifyListeners();
  }

  updateStoreStatus(bool status) {
    storeStatus = !storeStatus;
    notifyListeners();
  }

  final TextEditingController name = TextEditingController();
}
