// ignore: unused_import
// ignore: unused_import
// ignore_for_file: unnecessary_const, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'Calculator.dart';
// ignore: unused_import
import 'luas.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("HOME")),
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          // ignore: avoid_unnecessary_containers
          Container(
            height: 210,
            width: 450,
            margin: const EdgeInsets.all(10),
            child: Card(
              color: const Color.fromARGB(255, 60, 134, 219),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("WALCOME TO  Aplikasi Hitung",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 222, 234, 235),
                        fontWeight: FontWeight.bold,
                      )),
                  const Text("Suport By hafittekno.com",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromARGB(255, 222, 234, 235),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(child: const Card(child: const Text("KALKULATOR"))),
              // Container(child: const Card(child: const Text("LUAS")))
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyCalculator();
                    }));
                  },
                  child: const Text("KALKULATOR")),
              const SizedBox(width: 20.0),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MayLuas();
                    }));
                  },
                  child: const Text("LUAS"))
            ],
          )
        ]),
      ),
    );
  }
}
