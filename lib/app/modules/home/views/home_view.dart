import 'package:flutter/material.dart';
import 'package:flutter_template/app/shared/widgets/side_drower_widget.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      drawer: SideDrawerWidget(),
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeController>(
              builder: (_) {
                return Text('xxxxx ${_.title}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
