import 'package:flutter/material.dart';

// ignore: unused_import
import 'Calculator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("HOME")),
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Center(child: Text("SELAMAT DATANG DI APLIKASI HITUNG")),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const MyCalculator();
                        // }));
                      },
                      child: const Text("DISKON"))
                ],
              )
            ]),
      ),
    );
  }
}
