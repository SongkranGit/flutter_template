import 'package:flutter_template/app/modules/shop/services/shop_service.dart';
import 'package:get/get.dart';

import '../controllers/shop_controller.dart';

class ShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopController>(() => ShopController());
    Get.lazyPut<IShopService>(() => ShopService());
  }
}
