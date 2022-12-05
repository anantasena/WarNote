import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/catatan_hutang_controller.dart';

class CatatanHutangView extends GetView<CatatanHutangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CatatanHutangView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CatatanHutangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
