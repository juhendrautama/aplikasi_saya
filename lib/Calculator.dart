// ignore_for_file: unnecessary_import, file_names

import 'dart:ui';
import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyCalculator> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyCalculator> {
  //fungsi dan variabel proses
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  int hasil = 0, text1 = 0, text2 = 0;
  void proses() {
    setState(() {
      text1 = int.tryParse(myController1.text);
      text2 = int.tryParse(myController2.text);
      hasil = text1 + text2;
    });
    myController1.clear();
    myController2.clear();
  }

  void kurang() {
    setState(() {
      text1 = int.tryParse(myController1.text);
      text2 = int.tryParse(myController2.text);
      hasil = text1 - text2;
    });
    myController1.clear();
    myController2.clear();
  }

  void bagi() {
    setState(() {
      text1 = int.tryParse(myController1.text);
      text2 = int.tryParse(myController2.text);
      hasil = text1 ~/ text2;
    });
    myController1.clear();
    myController2.clear();
  }

  void kali() {
    setState(() {
      text1 = int.tryParse(myController1.text);
      text2 = int.tryParse(myController2.text);
      hasil = text1 * text2;
    });
    myController1.clear();
    myController2.clear();
  }

  void proses2() {
    setState(() {
      hasil = 0;
    });
    myController1.clear();
    myController2.clear();
  }
//fungsi dan variabel proses

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hasil : $hasil",
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                  controller: myController1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    labelText: 'ANGGKA 1',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                  )),
              const SizedBox(height: 10.0),
              TextFormField(
                  controller: myController2,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    labelText: 'ANGGKA 2',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                  )),
              const SizedBox(height: 10.0),

              //Tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: proses, child: const Text("+")),
                  const SizedBox(width: 10.0),
                  ElevatedButton(onPressed: kurang, child: const Text("-")),
                ],
              ),

              const SizedBox(height: 0.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: bagi, child: const Text("/")),
                  const SizedBox(width: 10.0),
                  ElevatedButton(onPressed: kali, child: const Text("*")),
                  const SizedBox(width: 5.0),
                  ElevatedButton(onPressed: proses2, child: const Text("Reset"))
                ],
              ),
              //Tombol
            ],
          ),
        ),
      ),
    );
  }
}
