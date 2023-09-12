import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incremento / decremento'),
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Obx(() => Text(
                  "${controller.click.tap}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                )),
          ),
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
                splashColor: Colors.green,
                icon: Icon(Icons.add),
                onPressed: () => controller.click.increment()),
            SizedBox(
              width: 50,
            ),
            IconButton(
                splashColor: Colors.red,
                icon: Icon(Icons.remove),
                onPressed: () => controller.click.decrement()),
          ])
        ]),
      ),
    );
  }
}
