import 'package:flutter/material.dart';
import 'package:lecture_11_12/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'asynchronous programming',
      //theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomeScreen(),
    );
  }
}

