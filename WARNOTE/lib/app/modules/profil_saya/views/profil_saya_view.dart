import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_saya_controller.dart';

class ProfilSayaView extends GetView<ProfilSayaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfilSayaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfilSayaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
