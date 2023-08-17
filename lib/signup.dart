import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'verify.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {



  bool showvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff686767),
        // backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff707070),
            Color(0xff686767),
            Color(0xff303030)
          ],begin: Alignment.topCenter,end: Alignment.bottomCenter,stops: [0.2,0.5,0.8]
          )),
            child: Center(
              child: Column(children: [
                const SizedBox(
                  height: 100,
                ),
                (Image.asset('assets/image/Group 72644.png',
                    scale: 7, height: 50, width: 50, fit: BoxFit.fill)),

                const SizedBox(
                  height: 0,
                  width: 100,
                ),
                const Padding(padding: EdgeInsets.only(right: 200,left: 10,bottom: 10,top: 30),
                child:  Text("create account",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ))),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30, right: 10)),
                    SizedBox(
                      width: 190,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, right: 10, left: 0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'First Name',
                            labelStyle: TextStyle(color: Colors.white,),
                            prefixIcon: Icon(Icons.account_box,size: 30,color: Colors.grey),
                            hintText: 'Enter Your Enter First Name',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 190,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 1, right: 00),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'last Name',

                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter Your Last Name',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // const Padding(padding: EdgeInsets.all(15)),

                const SizedBox(width: 200),
                // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 20, top: 25),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: 'Moblie no',
                      prefixIcon: Icon(Icons.call,color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter Your Moblie no',
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 20, top: 25),
                  child: SizedBox(
                    width: 700,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Email id',
                        prefixIcon: Icon(Icons.email,color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your Email id',
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 20, top: 25),
                  child: SizedBox(
                    width: 700,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock,color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 20, top: 25),
                  child: SizedBox(
                    width: 700,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white, width: 3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.lock,color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Checkbox(

                        // fillColor: Colors.white,
                        checkColor: Colors.blue,
                        activeColor: Colors.red,
                        value: this.showvalue,
                        onChanged: (value) {
                          setState(() {
                            this.showvalue = value!;
                          });
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 1, top: 9),
                      child: Text("I Agree to terms and condition",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.only(
                              left: 100,
                              right: 100,
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyVerify(),
                            ),
                          );
                        },
                        child: const Text(
                          "signup",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        )),
                  ),
                ),
                SizedBox(height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      TextButton(
                        child: Text(
                          'login',
                          // style: TextStyle(fontSize: 17)
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyPhone(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
