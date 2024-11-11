import 'dart:convert';

class Order {
  final int id;
  final String title;
  final String amount;
  final String imgUrl;
  final int quantity;
  Order({
    required this.id,
    required this.title,
    required this.amount,
    required this.imgUrl,
    required this.quantity,
  });

  Order copyWith({
    int? id,
    String? title,
    String? amount,
    String? imgUrl,
    int? quantity,
  }) {
    return Order(
      id: id ?? this.id,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      imgUrl: imgUrl ?? this.imgUrl,
      quantity: quantity ?? this.quantity,
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

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      amount: map['amount'] ?? '',
      imgUrl: map['imgUrl'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Order(id: $id, title: $title, amount: $amount, imgUrl: $imgUrl, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Order &&
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
