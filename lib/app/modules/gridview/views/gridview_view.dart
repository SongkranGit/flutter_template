import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/gridview_controller.dart';

class GridviewView extends GetView<GridviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridviewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GridviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
