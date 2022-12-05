import 'package:carbon_icons/carbon_icons.dart';
// import 'package:codicon/codicon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/codicon.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/wi.dart';
import 'package:unicons/unicons.dart';
import '../controllers/home_controller.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  Home createState() => Home();
  const HomeScreen({Key? key}) : super(key: key);
}

class Home extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            color: Color.fromARGB(255, 0, 132, 255),
            child: ListView(
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.only(left: 20, right: 20),
                  // color: Colors.red,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              'Dhifan Julda Antasena',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              UniconsSolid.bars,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin:
                      EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
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
                        padding: EdgeInsets.all(10),
                        // height: 50,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.event_note_outlined,
                                size: 35,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 0, 0, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
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
                        padding: EdgeInsets.all(10),
                        // height: 50,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Iconify(
                                Mdi.sticky_note_add_outline,
                                size: 35,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(175, 0, 0, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
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
                        padding: EdgeInsets.all(10),
                        // height: 50,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Iconify(
                                Mdi.sticky_note_text_outline,
                                size: 35,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 80, 200, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
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
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  padding: EdgeInsets.all(10),
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(),
                    ],
                  ),
                )
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