// ignore_for_file: unnecessary_import, file_names, prefer_const_literals_to_create_immutables, unused_import

import 'dart:ui';
import 'package:flutter/material.dart';

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<TentangAplikasi> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Info"),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              Container(
                width: 450,
                padding: const EdgeInsets.all(13),
                child: Card(
                  color: const Color.fromARGB(255, 60, 134, 219),
                  elevation: 5,
                  child: Column(
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
              const Text("HANYA APLIKASI HITUNG SEDERHANA"),
            ])),
      ),
    );
  }
}
