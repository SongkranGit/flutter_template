import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    Get.put(EventController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Example'),
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
              const Divider(
                height: 10.0,
                thickness: 0.5,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                // decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                        onPressed: () => print('xxx'),
                        icon: const Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        label: Text('Photo')),
                    const VerticalDivider(
                      width: 8.0,
                      color: Colors.red,
                    ),
                    TextButton.icon(
                        onPressed: () => print('xxx'),
                        icon: const Icon(
                          Icons.room,
                          color: Colors.red,
                        ),
                        label: Text('Room')),
                    const VerticalDivider(
                      width: 8.0,
                    ),
                    TextButton.icon(
                        onPressed: () => print('xxx'),
                        icon: const Icon(
                          Icons.videocam,
                          color: Colors.red,
                        ),
                        label: Text('Live')),
                  ],
                ),
              ),
              const Divider(
                height: 10.0,
                thickness: 0.5,
              ),
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
