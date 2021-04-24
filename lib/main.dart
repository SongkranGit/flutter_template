import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  // var breedProvider = Get.put(BreedProvider());
  // var breeds = breedProvider.getBreeds();
  // breeds.then((value) => print('===' + value.toString()));

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(primaryColor: Colors.orange),
    ),
  );
}
