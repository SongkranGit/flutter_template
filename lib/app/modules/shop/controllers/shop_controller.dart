import 'package:flutter_template/app/data/models/product.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  var products = List<Product>().obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
