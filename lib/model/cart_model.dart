import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<CartModel> fetchCartModel() async {
  final response = await http.get(
    Uri.parse('https://fakestoreapi.com/cart'),
  );

  if (response.statusCode == 200) {
    return CartModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load CartModel');
  }
}

Future<CartModel> updateCartModel(String title) async {
  final response = await http.put(
    Uri.parse('https://fakestoreapi.com/cart'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 200) {
    return CartModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update CartModel.');
  }
}


class CartModel {
  late int id;
  late int userId;
  late String date;
  late List<Products> products;
  late int iV;

  CartModel({required this.id, required this.userId, required this.date, required this.products, required this.iV});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    date = json['date'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['date'] = this.date;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class Products {
  late int productId;
  late int quantity;

  Products({required this.productId, required this.quantity});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['quantity'] = this.quantity;
    return data;
  }
}
