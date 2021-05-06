import 'package:flutter/material.dart';
import 'package:flutter_template/app/modules/event/views/event_view.dart';
import 'package:flutter_template/app/modules/gridview/views/gridview_view.dart';
import 'package:flutter_template/app/modules/map/views/map_view.dart';
import 'package:get/get.dart';

class SideDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Mr. John Sommit'),
            accountEmail: Text('flutter@mail.com'),
            currentAccountPicture: ClipOval(
              child: Image.network(
                'https://avatars.githubusercontent.com/u/24783190?v=4',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            onTap: () => {Get.to(() => MapView())},
          ),
          ListTile(
            leading: Icon(Icons.api_rounded),
            title: Text('Rest Api'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.shop_rounded),
            title: Text('Shop'),
            onTap: () => {Get.toNamed('/shop')},
          ),
          ListTile(
            leading: Icon(Icons.login_rounded),
            title: Text('Login'),
            onTap: () => {Get.toNamed('/login')},
          ),
          ListTile(
            leading: Icon(Icons.grid_view),
            title: Text('GridView'),
            onTap: () => {Get.to(() => GridviewView())},
          ),
          ListTile(
            leading: Icon(Icons.language_rounded),
            title: Text('i18n'),
            onTap: () => {Get.to(() => GridviewView())},
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Event'),
            onTap: () => {Get.to(() => EventView())},
          ),
          const Divider(
            height: 0.8,
            thickness: 1,
          ),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ))
        ],
      ),
    );
  }
}
