import 'dart:convert';
import 'package:eudekatugas3/models/Categories.dart';
import 'package:eudekatugas3/models/data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class ApiService {
  static Future<dynamic> get(String url) async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }

 static Future<List<Getdata>> getTransaction() async {
    var res;
    res = await http
        .get('https://api.myjson.com/bins/q4y3m ');
    List<Getdata> customerList = [];

    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data as List;
      customerList = rest
          .map<Getdata>((json) => Getdata.fromJson(json))
          .toList();
    }
    return customerList;
  }

   static Future<List<Categories>> getCategories() async {
    var res;
    res = await http
        .get('https://api.myjson.com/bins/1bgu2y');
    List<Categories> customerList = [];

    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data as List;
      customerList = rest
          .map<Categories>((json) => Categories.fromJson(json))
          .toList();
    }
    return customerList;
  }
}