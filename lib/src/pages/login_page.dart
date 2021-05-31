import 'package:auth/src/service/service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 19),
              Text("User: lfdel24@gmail.com"),
              SizedBox(height: 19),
              Text("Pass: *****************"),
              SizedBox(height: 19),
              TextButton(
                  onPressed: () {
                    Service().signInWithEmailAndPassword();
                  },
                  child: Text("Sign in"))
            ],
          ),
        ),
      ),
    );
  }
}
