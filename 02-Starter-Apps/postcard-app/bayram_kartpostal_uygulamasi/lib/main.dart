import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xffD7E0FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mutlu Bayramlar"),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: Center(
        child: Image.asset('images/mutlu_bayramlar.jpg'),
      ),
    ),
  ));
}