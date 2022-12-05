import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/catatan_controller.dart';

class CatatanView extends GetView<CatatanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CatatanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CatatanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
