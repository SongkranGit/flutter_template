import 'dart:convert' as convert;

import 'package:flutter_template/app/data/models/product.dart';
import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Product.fromJson(map);
    httpClient.baseUrl = "http://makeup-api.herokuapp.com/api/v1/";
    super.onInit();
  }

  Future<List<Product>> fetchProducts() async {
    var response = await get('products.json?brand=maybelline');
    if (response.statusCode == 200) {
      List jsonResponse = convert.jsonDecode(response.body);
      return jsonResponse.map((e) => new Product.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
