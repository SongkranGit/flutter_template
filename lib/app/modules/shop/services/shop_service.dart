import 'dart:async';

import 'package:flutter_template/app/data/models/product.dart';
import 'package:flutter_template/app/data/network/dio_client.dart';

abstract class IShopService {
  Future<List<Product>> fetchProducts();
}

class ShopService implements IShopService {
  Future<List<Product>> fetchProducts() async {
    var completer = new Completer<List<Product>>();
    var data = await DioClient().get('/v1/breeds?limit=10&page=0');
    if (data != null) {
      List<Product> products = productFromJson(data);
      completer.complete(products);
    }
    return completer.future;
  }
}
