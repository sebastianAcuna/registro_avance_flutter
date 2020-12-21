import 'package:flutter/material.dart';
import 'package:registro_avance/src/widget/headers.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HeaderPico()
      ),
    );
  }
}