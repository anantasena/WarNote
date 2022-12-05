import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaksi_controller.dart';

class TransaksiView extends GetView<TransaksiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransaksiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TransaksiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
