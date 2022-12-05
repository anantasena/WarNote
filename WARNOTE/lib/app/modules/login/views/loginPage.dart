import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
// import 'package:warnote/module/data/homePage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LoginScreen());
}

class LoginScreen extends StatefulWidget {
  @override
  Login createState() => Login();
  const LoginScreen({Key? key}) : super(key: key);
}

class Login extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WarNote',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(90, 156, 255, 1),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 132, 255),
                  // Color.fromARGB(255, 0, 132, 255),
                  Color.fromARGB(255, 2, 9, 114),
                  // Color.fromARGB(255, 0, 0, 0),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 360,
            height: 480,
            child: ListView(
              children: <Widget>[
                Container(
                  // decoration: BoxDecoration(
                  //     gradient: LinearGradient(colors: [
                  //   Color.fromARGB(255, 0, 0, 0),
                  //   Color.fromARGB(255, 0, 174, 255),
                  // ])),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    style: GoogleFonts.poppins(),
                    controller: usernameController,
                    decoration: const InputDecoration(
                      // hintStyle: TextStyle(
                      //   fontSize: 20,
                      // ),
                      filled: true,
                      fillColor: Color.fromRGBO(220, 220, 220, 1),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Iconify(
                          Mdi.user,
                          color: Colors.blue,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      // labelText: 'Username',
                      hintText: 'Username',
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    style: GoogleFonts.poppins(),
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      // hintStyle: TextStyle(
                      //   fontSize: 20,
                      // ),
                      filled: true,
                      fillColor: Color.fromRGBO(220, 220, 220, 1),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Iconify(
                          Mdi.password,
                          color: Colors.blue,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      // labelText: 'Password',
                      hintText: 'Password',
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Lupa password?',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    child: Text(
                      'LOGIN',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      users.add({
                        'username': usernameController.text,
                        'password': passwordController.text,
                      });

                      usernameController.text = '';
                      passwordController.text = '';
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                  child: Text(
                    'Daftar Akun',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // initialRoute: '/',
      // routes: {
      //   '/home': (context) => HomeScreen(),
      // },
    );
  }
}
