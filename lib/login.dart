// import 'package:flutter/material.dart';
import 'package:fire3/email.dart';
import 'package:fire3/verify.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'Ser/firebase.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'home.dart';
// import 'signup.dart';
//
//
//
// class login extends StatefulWidget {
//   @override
//   State<login> createState() => _loginState();
// }
//
// class _loginState extends State<login> {
//   final _formkey = GlobalKey<FormState>();
//   bool passwordVisible = false;
//   final GoogleSignIn  _googleSignIn=GoogleSignIn();
//
//   @override
//   void initState() {
//     super.initState();
//     passwordVisible = true;
//   }
//
// var di= '+91';
//    TextEditingController qwe= TextEditingController() ;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0xff686767),
//         body: Form(
//           key: _formkey,
//           child: SingleChildScrollView(
//             child: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff707070),
//               Color(0xff686767),
//               Color(0xff303030)
//             ],begin: Alignment.topCenter,end: Alignment.bottomCenter,stops: [0.2,0.5,0.8]
//             )),
//               child: Center(
//                   child: Column(
//                     children: [
//                       const SizedBox(
//                         height: 100,
//                       ),
//                       (Image.asset('assets/image/Group 72644.png',
//                           scale: 7, height: 50, width: 50, fit: BoxFit.fill)),
//                       const SizedBox(
//                         height: 120,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 280.0,left: 10),
//                         child: Text(
//                           'Login',
//                           style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.w400),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 30,right: 30,bottom: 15,top: 15),
//                         child: Container(color: Color(0xff6D6A6A),
//                           child: TextFormField(
//                             controller: qwe,
//                             style: const TextStyle(color: Colors.white),
//                             keyboardType: TextInputType.number,
//                             decoration: const InputDecoration(
//
//                               border: OutlineInputBorder(),
//                               enabledBorder: OutlineInputBorder(
//                                   borderSide:
//                                   BorderSide(color: Colors.white, width: 3)),
//                               focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.white)),
//                               labelText: 'phone no',
//
//                               labelStyle: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal),
//                               hintText: 'Enter phone no',
//                               prefixIcon: Icon(Icons.account_box),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return "please enter phone no";
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: ()async{
//                           await FirebaseAuth.instance.verifyPhoneNumber(
//                             phoneNumber: '{$di + $qwe} ',
//                             verificationCompleted: (PhoneAuthCredential credential) {},
//                             verificationFailed: (FirebaseAuthException e) {},
//                             codeSent: (String verificationId, int? resendToken) {},
//                             codeAutoRetrievalTimeout: (String verificationId) {},
//                           );
//
//                         },
//                         child: Container(height: 30,width: 80,color: Colors.grey,child: Center(child: Text("Send SMS"))),
//                       ),
//
//                       Padding(
//                         padding: EdgeInsets.only(left: 30,right: 30,bottom: 15,top: 15),
//                         child: Container(color: Color(0xff6D6A6A),
//                           child: TextFormField(
//                             style: const TextStyle(color: Colors.white),
//                             // obscureText: passwordVisible,
//                             cursorColor: Colors.white,
//                             keyboardType: TextInputType.number,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               enabledBorder: OutlineInputBorder(
//                                   borderSide:
//                                   BorderSide(color: Colors.white, width: 3)),
//                               focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.white)),
//                               labelText: 'otp',
//                               labelStyle: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal),
//                               hintText: 'Enter otp',
//                               prefixIcon: Icon(Icons.password_outlined)
//                               // prefixIcon: Icon(Icons.lock),
//                               // suffixIcon: IconButton(
//                               //   icon: Icon(passwordVisible
//                               //       ? Icons.visibility
//                               //       : Icons.visibility_off),
//                               //   onPressed: () {
//                               //     setState(
//                               //           () {
//                               //         passwordVisible = !passwordVisible;
//                               //       },
//                               //     );
//                               //   },
//                               // ),
//                             ),
//                             validator: (value) {
//                               if (value == null || value!.isEmpty) {
//                                 return "please enter otp";
//                               } else if (value == null || value!.length < 6) {
//                                 return " please enter otp";
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                       ),
//                       // TextButton(
//                       //   child: Padding(
//                       //     padding: EdgeInsets.only(left: 220),
//                       //     child: Text(
//                       //       "forgot password ?",
//                       //       textAlign: TextAlign.right,
//                       //       style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.w400),
//                       //     ),
//                       //   ),
//                       //   onPressed: () {},
//                       // ),
//                       Container(height: 50,
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 primary: Colors.blue,
//                                 shape: StadiumBorder(),
//                                 padding: EdgeInsets.only(
//                                   left: 100,
//                                   right: 100,
//                                 )),
//                             onPressed: () {
//                               if (_formkey.currentState!.validate()) {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => home(),
//                                   ),
//                                 );
//                               }
//                             },
//                             child: const Text(
//                               "login",
//                               style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.w400),
//                             )),
//                       ),
//                      SizedBox(height: 10),
//                       Text("Login with"),
//
//                       IconButton(onPressed: () async{
//                         await Fir().signInWithGoogle();
//
//                         // _googleSignIn.signIn().then((value) {
//                         //   String UserName=value!.displayName!;
//                         //   String ProfilePicture = value!.photoUrl!;
//                         //
//                         //
//                         // });
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
//                       }, icon: Icon(Icons.g_mobiledata_rounded,size: 50,color: Colors.white,)),
//                       const SizedBox(
//                         height: 130,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               "don't have an account?",
//                               style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal),
//                             ),
//                             TextButton(
//                               child: Text('signup', textAlign: TextAlign.justify,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600)),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => signup(),
//                                   ),
//                                 );
//                               },
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   )),
//             ),
//           ),
//         ));
//   }
// }
//

import 'package:flutter/material.dart';

import 'Ser/firebase.dart';
import 'home.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  static String verify="";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {


  TextEditingController countryController = TextEditingController();
TextEditingController phoneController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
              //   'assets/img1.png',
              //   width: 150,
              //   height: 150,
              // ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We need to register your phone without getting started!",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone",
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade600,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () async{
                          setState(() {
                            isLoading = true;
                          });

                          // we had used future delayed to stop loading after
                          // 3 seconds and show text "submit" on the screen.
                          Future.delayed(const Duration(seconds: 3), (){
                            setState(() {
                              isLoading = false;
                            });
                          }
                          );

                          await FirebaseAuth.instance.verifyPhoneNumber(
                            phoneNumber: '${countryController.text + phoneController.text} ',
                            verificationCompleted: (PhoneAuthCredential credential) {},
                            verificationFailed: (FirebaseAuthException e) {},
                            codeSent: (String verificationId, int? resendToken) {
                              MyPhone.verify= verificationId;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyVerify(),));
                            },
                            codeAutoRetrievalTimeout: (String verificationId) {},
                          );



                        },
                        child: Row(
                          children: [
                            Text("Send the code"),
                            // CircularProgressIndicator(color: Colors.white,),
                          ],
                        )),
                  ),
SizedBox(height: 20),
                  Text("Login with"),

                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RE(),));
                        }, icon: Icon(Icons.e_mobiledata_outlined,size: 50,color: Colors.black,)),
                          SizedBox(width: 50),
                          IconButton(onPressed: () async{


                            await Fir().signInWithGoogle();

                            // _googleSignIn.signIn().then((value) {
                            //   String UserName=value!.displayName!;
                            //   String ProfilePicture = value!.photoUrl!;
                            //
                            //
                            // });
                            Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
                          }, icon: Icon(Icons.g_mobiledata_rounded,size: 50,color:Colors.black,)),
                        ],
                      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}