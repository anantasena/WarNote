// ignore_for_file: sort_child_properties_last

import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:carbon_icons/carbon_icons.dart';
// import 'package:unicons/unicons.dart';
// import 'package:get/get.dart';
// import '../controllers/home_controller.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:iconify_flutter/icons/codicon.dart';
// import 'package:iconify_flutter/icons/material_symbols.dart';
// import 'package:iconify_flutter/icons/wi.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  Home createState() => Home();
  const HomeScreen({Key? key}) : super(key: key);
}

class Home extends State<HomeScreen> {
  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Iconify(Mdi.home),
              // label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Iconify(Mdi.event_note_outline),
              // label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: Iconify(Mdi.note_add_outline),
              // label: 'Catatan Hutang',
            ),
            BottomNavigationBarItem(
              icon: Iconify(Mdi.note_outline),
              // label: 'Catatan',
            ),
          ],
          // currentIndex: _selectedIndex,
          // selectedItemColor: Colors.amber[800],
          // onTap: _onItemTapped,
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 132, 255),
          elevation: 3.0,
          centerTitle: true,
          title: Text(
            'WarNote',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                // padding: EdgeInsets.all(10),
                // margin: EdgeInsets.only(bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/warnote-logo.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                ),
              ),
              ListTile(
                // tileColor: Colors.red,
                leading: const Iconify(
                  Mdi.user_circle_outline,
                  color: Colors.blue,
                  size: 40,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                title: Text(
                  'Profil Saya',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                // tileColor: Colors.yellow,
                leading: const Iconify(
                  Mdi.about_circle_outline,
                  size: 40,
                  color: Colors.blue,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                title: Text(
                  'Tentang Kami',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                // tileColor: Colors.green,
                leading: const Iconify(
                  Mdi.logout,
                  size: 40,
                  color: Colors.blue,
                ),
                title: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            color: const Color.fromARGB(255, 0, 132, 255),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(
                      top: 30, left: 20, right: 20, bottom: 20),
                  // height: 100,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        // height: 50,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Icon(
                                Icons.event_note_outlined,
                                size: 35,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 0, 0, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Transaksi',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        // height: 50,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Iconify(
                                Mdi.sticky_note_add_outline,
                                size: 35,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(175, 0, 0, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Catatan Hutang',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        // height: 50,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Iconify(
                                Mdi.sticky_note_text_outline,
                                size: 35,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(0, 80, 200, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Catatan',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  padding: const EdgeInsets.all(10),
                  // width: 320,
                  // height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    // color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            CarbonIcons.report,
                            size: 40,
                          ),
                          title: Text(
                            'Laporan Keuangan',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// sticky_note_add_outline
// sticky_note_text_outline
