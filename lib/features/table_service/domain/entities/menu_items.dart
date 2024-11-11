import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class MenuItem {
  final String title;
  final String subtitle;
  List<MenuItemChild>? menuItemChildren;

  MenuItem(
      {required this.title, required this.subtitle, this.menuItemChildren});
}

List<MenuItem> menuItems = [
  MenuItem(title: "BENTO BOX", subtitle: "", menuItemChildren: [
    MenuItemChild(
        title: "CHICKEN (GRILLED) BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/grilled_chicken.png"),
    MenuItemChild(
        title: "CHICKEN TEMPURA BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/grilled_chicken.png"),
    MenuItemChild(
        title: "FRIED TOFU BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/tofu.jpg"),
    MenuItemChild(
        title: "GRILLED TOFU BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/tofu.jpg"),
    MenuItemChild(
        title: "SALMON BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/salmon.jpg"),
    MenuItemChild(
        title: "SHRINP (GRILLED) BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/shrimp_tempura.jpg"),
    MenuItemChild(
        title: "SHRIMP(TEMPURA) BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/shrimp_tempura.jpg"),
    MenuItemChild(
        title: "STEAK(GRILLED) BENTO BOX",
        amount: "17.5",
        imgUrl: "assets/images/pngs/steak.jpg"),
  ]),
  MenuItem(title: "CHEESE CAKE SERIES", subtitle: "", menuItemChildren: [
    MenuItemChild(
        title: "MATCHA CHEESECAKE LARGE",
        amount: "7.45",
        imgUrl: "assets/images/pngs/matcha_cheesecake.jpg"),
    MenuItemChild(
        title: "MILK TEA CHEESECAKE LARGE",
        amount: "7.5",
        imgUrl: "assets/images/pngs/matcha_cheesecake.jpg"),
    MenuItemChild(
        title: "OREO CHEESECAKE",
        amount: "7.5",
        imgUrl: "assets/images/pngs/oreo_cake.jpg"),
    MenuItemChild(
        title: "RASBERRY CHEESECAKE",
        amount: "7.5",
        imgUrl: "assets/images/pngs/rasberry.jpg"),
    MenuItemChild(
        title: "STRAWBERRY CHEESECAKE LARGE",
        amount: "7.5",
        imgUrl: "assets/images/pngs/rasberry.jpg"),
    MenuItemChild(
        title: "TARO CHEESECAKE LARGE",
        amount: "7.5",
        imgUrl: "assets/images/pngs/taro_cheesecake.jpg"),
  ]),
  MenuItem(title: "BUILD YOUR OWN RAMEN", subtitle: ""),
  MenuItem(title: "DESERTS", subtitle: ""),
  MenuItem(title: "DRINKS", subtitle: ""),
  MenuItem(title: "EXTRAS", subtitle: ""),
  MenuItem(title: "FRUIT TEA", subtitle: ""),
  MenuItem(title: "HANG-IN-RAMEN", subtitle: ""),
  MenuItem(title: "JAPANEESE GRILLE", subtitle: ""),
  MenuItem(title: "KID MENU", subtitle: ""),
  MenuItem(title: "LEMONADE PARADISE", subtitle: ""),
  MenuItem(title: "BENTO BOX", subtitle: ""),
];

class MenuItemChild {
  final int? id;

  final String title;
  final String amount;
  final String imgUrl;
  final int? quantity;
  MenuItemChild({
    this.id,
    required this.title,
    required this.amount,
    required this.imgUrl,
    this.quantity,
  });


  MenuItemChild copyWith({
    ValueGetter<int?>? id,
    String? title,
    String? amount,
    String? imgUrl,
    ValueGetter<int?>? quantity,
  }) {
    return MenuItemChild(
      id: id != null ? id() : this.id,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      imgUrl: imgUrl ?? this.imgUrl,
      quantity: quantity != null ? quantity() : this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'amount': amount,
      'imgUrl': imgUrl,
      'quantity': quantity,
    };
  }

  factory MenuItemChild.fromMap(Map<String, dynamic> map) {
    return MenuItemChild(
      id: map['id']?.toInt(),
      title: map['title'] ?? '',
      amount: map['amount'] ?? '',
      imgUrl: map['imgUrl'] ?? '',
      quantity: map['quantity']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuItemChild.fromJson(String source) => MenuItemChild.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MenuItemChild(id: $id, title: $title, amount: $amount, imgUrl: $imgUrl, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MenuItemChild &&
      other.id == id &&
      other.title == title &&
      other.amount == amount &&
      other.imgUrl == imgUrl &&
      other.quantity == quantity;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      amount.hashCode ^
      imgUrl.hashCode ^
      quantity.hashCode;
  }
}
