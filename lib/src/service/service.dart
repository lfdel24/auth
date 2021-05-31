import 'package:auth/src/pages/home_page.dart';
import 'package:auth/src/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Service {
  authStateChanges() {
    signOut();
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.hasData) {
          return HomePage(
            snapshot: snapshot,
          );
        }
        return LoginPage();
      },
    );
  }

  signInWithEmailAndPassword() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: "tu correo", password: "tu secret super mega password")
        .then((user) => print("$user"))
        .catchError((error) => print("$error"));
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
