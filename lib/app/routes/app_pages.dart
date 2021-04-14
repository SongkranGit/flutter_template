import 'package:get/get.dart';

import 'package:flutter_template/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_template/app/modules/home/views/home_view.dart';
import 'package:flutter_template/app/modules/map/bindings/map_binding.dart';
import 'package:flutter_template/app/modules/map/views/map_view.dart';
import 'package:flutter_template/app/modules/notification/bindings/notification_binding.dart';
import 'package:flutter_template/app/modules/notification/views/notification_view.dart';
import 'package:flutter_template/app/modules/settings/bindings/settings_binding.dart';
import 'package:flutter_template/app/modules/settings/views/settings_view.dart';
import 'package:flutter_template/app/modules/shop/bindings/shop_binding.dart';
import 'package:flutter_template/app/modules/shop/views/shop_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
  ];
}
