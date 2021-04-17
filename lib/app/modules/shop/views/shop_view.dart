import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ShopController());

    return Scaffold(
      appBar: AppBar(
        title: Text('ShopView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Test'),
          GetX<ShopController>(
            builder: (_) {
              return Text('xxxxxx ${_.count}');
            },
          )
        ],
      )),
    );
  }
}
