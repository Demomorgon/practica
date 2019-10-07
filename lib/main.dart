import 'package:flutter/material.dart';
import 'package:practica/hola/hola2.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext contex){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hola22()
    );
  }
}