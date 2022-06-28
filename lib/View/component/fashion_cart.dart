import 'package:flutter/foundation.dart';

class fashionCartItem {
  final int quantity;
  // final String? id;
  final String? productId;
  final String name;
  final String imageUrl;
  final double price;
  final Option option;
  int? qty;
  fashionCartItem({
    // required this.id,
    required this.productId,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imageUrl,
    required this.option,
    this.qty,
  });
}

class Option {
  String? color;
  String? size;
  int? vat;
  Option({this.color, this.size, this.vat});
}

class Cart with ChangeNotifier {
  Map<String, fashionCartItem> _items = {};
  Map<String, fashionCartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  void setQty(
      {String? productId,
        double? price,
        double? shipping,
        String? name,
        String? imageUrl,
        int? qty}) {
    _items.update(
        productId ?? "",
            (exittingItem) => fashionCartItem(
          // id: productId,//DateTime.now().toString(),
          productId: productId,
          name: name ?? "",
          price: price ?? 0.0,
          quantity: qty ?? 1,
          imageUrl: imageUrl ?? "",
          qty: qty ?? 1,
          option: Option(
            color: "red",
            size: "S",
            vat: 10,
          ),
        ));
    notifyListeners();
  }

  void addItem(
      String productId, double price, String? name, String? imageUrl, int qty) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
              (exittingItem) => fashionCartItem(
            //id: exittingItem.productId,
              productId: exittingItem.productId,
              name: exittingItem.name,
              price: exittingItem.price,
              quantity: exittingItem.quantity,
              imageUrl: exittingItem.imageUrl,
              qty: exittingItem.qty,
              option: Option(
                color: "red",
                size: "S",
                vat: 10,
              )));
    } else {
      _items.putIfAbsent(
          productId,
              () => fashionCartItem(
            // id: productId,//DateTime.now().toString(),
            name: name!,
            productId: productId,
            price: price,
            quantity: qty,
            imageUrl: imageUrl!,
            qty: qty,
            option: Option(
              color: "red",
              size: "S",
              vat: 10,
            ),
          ));
    }
    notifyListeners();
  }

  double get totalAmount {
    var total = 0.0;
    total = subAmount + 60;

    return total;
  }

  double get subAmount {
    var subtotal = 0.0;

    _items.forEach((key, cartItem) {
      subtotal += (cartItem.price * cartItem.qty!.toInt());
    });
    return subtotal;
  }

  void removeItem(String? productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
