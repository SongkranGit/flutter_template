import 'package:flutter_template/app/data/models/product.dart';
import 'package:flutter_template/app/modules/shop/services/shop_service.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  final IShopService shopService = Get.find();

  var products = List<Product>().obs;
  final count = 0.obs;
  final name = "GetX".obs;

  @override
  void onInit() {
    this.fetchProducts();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void fetchProducts() {
    // shopService.fetchProducts().then((value) => {this.products = value});
  }
}
