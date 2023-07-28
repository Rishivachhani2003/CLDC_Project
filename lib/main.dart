import 'package:cldc/screens/login_cldc.dart';
import 'package:cldc/screens/task_screen.dart';
import 'package:flutter/material.dart';
// import 'package:cldc/screens/task_screen.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:task_screen.dart(),
      home: task_screen(),
    );
  }
}
