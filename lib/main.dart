import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Aplikasi Sederhana'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //fungsi dan variabel proses
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  int? hasil = 0, text1 = 0, text2 = 0;
  // ignore: unused_element
  void proses() {
    setState(() {
      text1 = int.tryParse(myController1.text);
      text2 = int.tryParse(myController2.text);
      hasil = text1! + text2!;
    });
    myController1.clear();
    myController2.clear();
  }
//fungsi dan variabel proses

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hasil : $hasil"),
              const SizedBox(height: 20.0),
              TextField(
                  controller: myController1,
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
              const SizedBox(height: 20.0),
              TextField(
                  controller: myController2,
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
              const SizedBox(height: 20.0),
              //Tombol
              ElevatedButton(onPressed: proses, child: const Text("PROSES"))
              //Tombol
            ],
          ),
        ),
      ),
    );
  }
}
