import 'package:auth/src/service/service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  _auth.authStateChanges().listen((user) {
    print('User: $user');
  });
  //
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Service().authStateChanges(),
    );
  }
}
