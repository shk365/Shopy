import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Users>> fetchProducts(http.Client client) async {
  final response =
      await client.get(Uri.parse('https://fakestoreapi.com/users'));

  return compute(parseUsers, response.body);
}

List<Users> parseUsers(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed
      .map<Users>((json) => Users.fromJson(json))
      .toList();
}


class Users {
  late Address address;
  int? id;
  late String email;
  late String username;
  String? password;
  late Name name;
  late String phone;
  int? iV;

  Users(
      {required this.address,
      this.id,
      required this.email,
      required this.username,
      this.password,
      required this.name,
      required this.phone,
      this.iV});

  Users.fromJson(Map<String, dynamic> json) {
    address =
        (json['address'] != null ? new Address.fromJson(json['address']) : null)!;
    id = json['id'];
    email = json['email'];
    username = json['username'];
    password = json['password'];
    name = (json['name'] != null ? new Name.fromJson(json['name']) : null)!;
    phone = json['phone'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['id'] = this.id;
    data['email'] = this.email;
    data['username'] = this.username;
    data['password'] = this.password;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['phone'] = this.phone;
    data['__v'] = this.iV;
    return data;
  }
}

class Address {
  Geolocation? geolocation;
  String? city;
  String? street;
  int? number;
  String? zipcode;

  Address(
      {this.geolocation, this.city, this.street, this.number, this.zipcode});

  Address.fromJson(Map<String, dynamic> json) {
    geolocation = json['geolocation'] != null
        ? new Geolocation.fromJson(json['geolocation'])
        : null;
    city = json['city'];
    street = json['street'];
    number = json['number'];
    zipcode = json['zipcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.geolocation != null) {
      data['geolocation'] = this.geolocation!.toJson();
    }
    data['city'] = this.city;
    data['street'] = this.street;
    data['number'] = this.number;
    data['zipcode'] = this.zipcode;
    return data;
  }
}

class Geolocation {
  String? lat;
  String? long;

  Geolocation({this.lat, this.long});

  Geolocation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['long'] = this.long;
    return data;
  }
}

class Name {
  late String firstname;
  late String lastname;

  Name({required this.firstname, required this.lastname});

  Name.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    return data;
  }
}
