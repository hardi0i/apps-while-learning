import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import './cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    required this.id,
    required this.amount,
    required this.products,
    required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];
  final String? authToken;
  final String? authId;

  Orders(
    this.authToken,
    this.authId,
    this._orders,
  );

  List<OrderItem> get orders {
    return [..._orders];
  }

  Future<void> addOrder(
    List<CartItem> cartProducts,
    double total,
  ) async {
    final url = Uri.parse(
      'https://my-new-project-ca957-default-rtdb.firebaseio.com/orders/$authId.json?auth=$authToken',
    );
    final timestamp = DateTime.now();
    final response = await http.post(
      url,
      body: json.encode(
        {
          'amount': total,
          'dateTime': timestamp.toIso8601String(),
          'products': cartProducts
              .map(
                (cp) => {
                  'id': cp.id,
                  'title': cp.title,
                  'quantity': cp.quantity,
                  'price': cp.price,
                },
              )
              .toList(),
        },
      ),
    );
    _orders.insert(
      0,
      OrderItem(
        id: json.decode(response.body)['name'],
        amount: total,
        dateTime: timestamp,
        products: cartProducts,
      ),
    );
    notifyListeners();
  }

  Future<void> fetchAndSetOrders() async {
    final url = Uri.parse(
      'https://my-new-project-ca957-default-rtdb.firebaseio.com/orders/$authId.json?auth=$authToken',
    );
    final response = await http.get(url);
    final extractedData = json.decode(response.body) as Map<String, dynamic>?;
    final List<OrderItem> loadedOrders = [];
    if (extractedData == null) {
      return;
    }
    extractedData.forEach(
      (prderId, ordersData) {
        loadedOrders.add(
          OrderItem(
            id: prderId,
            amount: ordersData['amount'],
            dateTime: DateTime.parse(ordersData['dateTime']),
            products: (ordersData['products'] as List<dynamic>)
                .map(
                  (od) => CartItem(
                    id: od['id'],
                    price: od['price'],
                    quantity: od['quantity'],
                    title: od['title'],
                  ),
                )
                .toList(),
          ),
        );
      },
    );
    _orders = loadedOrders.reversed.toList();
    notifyListeners();
  }
}
