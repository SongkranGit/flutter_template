import 'package:flutter_template/app/data/models/product.dart';

class ShopService {
  Future<List<Product>> fetchProducts() async {
    // ApiRequest(url: 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline', data: null).get(onSuccess: (response) {
    //   return productFromJson(response);
    // }, onError: (error) {
    //   return null;
    // });

    // ApiRequest(url: 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline', data: null).get(
    //   onSuccess: (data) {
    //     List<Product> products = ((data as List).map((postJson) => Product.fromJson(postJson)).toList());
    //     return products;
    //   },
    //   onError: (error) {
    //     return null;
    //   },
    // );
  }
}
