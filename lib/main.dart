import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: KotakLayout(),
        ),
      ),
    );
  }
}

class KotakLayout extends StatelessWidget {
  Widget buatKotak(Color warna, double ukuran) {
    return Container(
      decoration: BoxDecoration(
        color: warna,
      ),
      height: ukuran,
      width: ukuran,
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buatKotak(Colors.greenAccent, 100),
        buatKotak(Colors.orangeAccent[400]!, 70),
        buatKotak(Colors.greenAccent, 50),
        buatKotak(Colors.orangeAccent[400]!, 90),
        buatKotak(Colors.red[300]!, 110),
        buatKotak(Colors.blue[300]!, 30),
      ],
    );
  }
}
