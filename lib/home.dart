// ignore_for_file: unused_import, avoid_unnecessary_containers, avoid_print

import 'package:aplikasi_saya/calender.dart';
import 'package:aplikasi_saya/tentang.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_saya/Calculator.dart';
import 'package:aplikasi_saya/luas.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 27, 125, 238),
        automaticallyImplyLeading: true,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(202, 27, 125, 238),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // ignore: missing_required_param
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/new.png"),
                fit: BoxFit.contain,
                repeat: ImageRepeat.noRepeat,
              )),
            ),
            const Divider(height: 1, thickness: 1),
            ListTile(
              hoverColor: Colors.amber,
              leading: const Icon(
                Icons.calculate,
                size: 38,
                color: Color.fromARGB(255, 250, 251, 252),
              ),
              title: const Text("Kalkulator",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyCalculator();
                }));
              },
            ),
            const Divider(height: 1, thickness: 1),
            ListTile(
              hoverColor: Colors.amber,
              leading: const Icon(
                Icons.donut_large,
                size: 38,
                color: Color.fromARGB(255, 250, 251, 252),
              ),
              title: const Text("Luas",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MayLuas();
                }));
              },
            ),
            const Divider(height: 1, thickness: 1),
            ListTile(
              hoverColor: Colors.amber,
              leading: const Icon(
                Icons.calendar_month,
                size: 38,
                color: Color.fromARGB(255, 250, 251, 252),
              ),
              title: const Text("Kalender",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MayKalender();
                }));
              },
            ),
            const Divider(height: 1, thickness: 1),
            ListTile(
              hoverColor: Colors.amber,
              leading: const Icon(
                Icons.info,
                size: 38,
                color: Color.fromARGB(255, 250, 251, 252),
              ),
              title: const Text("Info Aplikasi",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TentangAplikasi();
                }));
              },
            ),
            const Divider(height: 1, thickness: 1),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 152, 215, 240),
          Color.fromARGB(255, 27, 190, 240)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SafeArea(
          left: true,
          right: true,
          top: true,
          bottom: true,
          minimum: EdgeInsets.zero,
          child: Column(children: <Widget>[
            //baris pertama
            Container(
              width: 450,
              padding: const EdgeInsets.all(13),
              child: Card(
                color: const Color.fromARGB(255, 60, 134, 219),
                elevation: 0,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(height: 10.0),
                    const Image(
                      image: AssetImage('images/new.png'),
                      fit: BoxFit.contain,
                      repeat: ImageRepeat.repeat,
                      width: 350,
                    ),
                    const Padding(padding: EdgeInsets.all(12)),
                    const SizedBox(height: 5.0),
                    const Text("WALCOME TO  Aplikasi Hitung",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 5.0),
                    const Text("Solusi Belajar Berhitung",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
            //baris dua
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 170,
                  width: 165,
                  margin: const EdgeInsets.all(10),
                  child: Card(
                      color: const Color.fromARGB(255, 60, 134, 219),
                      elevation: 3,
                      child: InkWell(
                        hoverColor: const Color.fromARGB(255, 253, 252, 252),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MyCalculator();
                          }));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.calculate,
                              size: 70,
                              color: Color.fromARGB(255, 250, 251, 252),
                            ),
                            const Text("Kalkulator",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      )),
                ),
                Container(
                    height: 170,
                    width: 165,
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 3,
                      color: const Color.fromARGB(255, 60, 134, 219),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MayLuas();
                          }));
                        },
                        hoverColor: const Color.fromARGB(255, 245, 242, 244),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.donut_large,
                              size: 70,
                              color: Color.fromARGB(255, 248, 249, 250),
                            ),
                            const Text("Luas",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            //baris tiga
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 170,
                  width: 165,
                  margin: const EdgeInsets.all(10),
                  child: Card(
                      color: const Color.fromARGB(255, 60, 134, 219),
                      elevation: 3,
                      child: InkWell(
                        hoverColor: const Color.fromARGB(255, 253, 252, 252),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MayKalender();
                          }));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 70,
                              color: Color.fromARGB(255, 250, 251, 252),
                            ),
                            const Text("Kalender",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      )),
                ),
                Container(
                    height: 170,
                    width: 165,
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 3,
                      color: const Color.fromARGB(255, 60, 134, 219),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const TentangAplikasi();
                          }));
                        },
                        hoverColor: const Color.fromARGB(255, 245, 242, 244),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.info,
                              size: 70,
                              color: Color.fromARGB(255, 248, 249, 250),
                            ),
                            const Text("Info Aplikasi",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Container(
              height: 80,
              width: 500,
              padding: const EdgeInsets.all(20),
              child: Card(
                color: const Color.fromARGB(255, 60, 134, 219),
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text("Suport By hafittekno.com",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
