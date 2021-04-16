import 'package:flutter_template/app/data/models/product.dart';
import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (val) => Product.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = "http://makeup-api.herokuapp.com/api/v1/";
    super.onInit();
  }

  //
  // Future<List<Product>> fetchProducts() async {
  //   final response = await get('products.json?brand=maybelline');
  //   if (response.status.hasError) {
  //     return Future.error(response.statusText);
  //   } else {
  //     return productFromJson(response.body);
  //   }
  // var url = Uri.parse(
  //     'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
  // var response = await client.get(url);
  // if (response.statusCode == 200) {
  //   var jsonString = response.body;
  //   return productFromJson(jsonString);
  // } else {
  //   //show error message
  //   return null;
  // }
}
