import 'package:flutter_template/app/modules/shop/services/shop_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final title = 'My Home Title'.obs;
  final IShopService shopService = Get.find();

  final count = 0.obs;

  @override
  void onInit() {
    shopService.fetchProducts();
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
