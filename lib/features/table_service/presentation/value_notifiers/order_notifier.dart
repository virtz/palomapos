import 'package:flutter/material.dart';

import '../../domain/entities/menu_items.dart';

class OrderListNotifier extends ValueNotifier<List<MenuItemChild>> {
  OrderListNotifier() : super([]);

  void addItem(MenuItemChild item) {
    // Check if item with same title already exists
    var existingItem = value.firstWhere(
      (i) => i.title == item.title,
      orElse: () => MenuItemChild(title: '', amount: "", imgUrl: ""),
    );
    if (existingItem.title.isEmpty) {
      // If item does not exist, add to the list
      value = [...value, item];
    }
    // If the item exists, do nothing (or handle duplicate addition as needed)
    notifyListeners();
  }

  void removeItem(String itemTitle) {
    // Remove the item directly by filtering it out based on the title
    value = value.where((item) => item.title != itemTitle).toList();
    notifyListeners();
  }

  double get totalAmount {
    double total = 0;
    for (var item in value) {
      total += num.parse(
          item.amount); // Assuming MenuItemChild has an 'amount' field
    }
    return total;
  }
}
