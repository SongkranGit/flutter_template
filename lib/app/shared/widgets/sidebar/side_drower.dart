import 'package:flutter/material.dart';
import 'package:flutter_template/app/modules/map/views/map_view.dart';
import 'package:flutter_template/app/modules/shop/views/shop_view.dart';
import 'package:get/get.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Side menu with GetX',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            onTap: () => {Get.to(MapView())},
          ),
          ListTile(
            leading: Icon(Icons.api_rounded),
            title: Text('Rest Api'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.api_rounded),
            title: Text('Shop'),
            onTap: () => {Get.to(ShopView())},
          ),
          ListTile(
            leading: Icon(Icons.login_rounded),
            title: Text('Login'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
