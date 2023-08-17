import 'package:fire3/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LO extends StatefulWidget {
  const LO({super.key});

  @override
  State<LO> createState() => _LOState();
}
var emailAddress="";
var password="";
class _LOState extends State<LO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(right: 20.0,left: 20, top: 100),
             child: Container(
               child: TextFormField(
                 onChanged: (value){
                   emailAddress=value;
                 },
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(hintText: "email"),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 20.0,left: 20, top: 10),
             child: Container(
               child: TextFormField(
                 obscureText: true,
                 onChanged: (value){
                   password =value;
                 },
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(hintText: "password"),
               ),
             ),
           ),
             SizedBox(height: 20),
    Center(child: ElevatedButton(child: Text("login"),onPressed: ()async{
      try {
        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
    })),

         ],
       ),

    );
  }
}
