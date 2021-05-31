import 'dart:developer';

import 'package:auth/src/service/service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final AsyncSnapshot<User?> snapshot;

  const HomePage({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("You are logged in ${snapshot.data.toString()}"),
            SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Service().signOut();
                },
                child: Text("Sign out"))
          ],
        ),
      ),
    );
  }
}
