import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    Get.put(EventController());
    return Scaffold(
      appBar: AppBar(
        title: Text('EventView'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: GetX<EventController>(
                    builder: (_) {
                      return Text(
                        'Event count = ${_.count} ',
                        style: TextStyle(fontSize: 20),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(color: Colors.blue),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [Text('sss'), Text('data')],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
