import 'package:flutter_template/app/data/models/product.dart';
import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (val) => Product.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = "http://makeup-api.herokuapp.com/api/v1/";
    super.onInit();
  }
}
