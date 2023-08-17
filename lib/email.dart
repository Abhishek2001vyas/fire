import 'package:fire3/lo.dart';
import 'package:fire3/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RE extends StatefulWidget {
  const RE({super.key});

  @override
  State<RE> createState() => _REState();
}

class _REState extends State<RE> {
  var emailAddress = '';
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20, top: 100),
          child: Container(
            child: TextFormField(
              onChanged: (value) {
                emailAddress = value;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "email"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
          child: Container(
            child: TextFormField(
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "password"),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: ElevatedButton(
              child: Text("register"),
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: emailAddress,
                    password: password,
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LO(),
                    ));
              }),
        ),
        SizedBox(height: 10),
        Text("OR"),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LO(),
                  ));
            },
            child: Text("login"))
      ]),
    );
  }
}
