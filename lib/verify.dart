import 'package:fire3/home.dart';
import 'package:fire3/login.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'signup.dart';
// import 'home.dart';
import 'package:firebase_auth/firebase_auth.dart';
//
// class Verify extends StatelessWidget {
//   const Verify({super.key});
// final FirebaseAuth auth= FirebaseAuth.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff686767),
//       appBar: AppBar(
//         backgroundColor: Color(0xff686767),
//         //     actions: [
//         //   ElevatedButton.icon(
//         //       onPressed: () {
//         //         Navigator.push(
//         //           context,
//         //           MaterialPageRoute(
//         //             builder: (context) => signup(),
//         //           ),
//         //         );
//         //       },
//         //       icon: Icon(Icons.arrow_back_ios),
//         //       label: Text("back"))
//         // ]
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Container(
//                 child: const Column(
//                   children: [
//                     const Padding(
//                       padding: const EdgeInsets.only(
//                           top: 100, right: 100, left: 100, bottom: 50),
//                       child: Text(
//                         "Verification",
//                         style: TextStyle(color: Colors.blue, fontSize: 30),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(
//                           left: 50, right: 50, top: 50, bottom: 50),
//                       child: Text("OTP Has been Sent ",
//                           style: TextStyle(color: Colors.white)),
//                     ),
//                   ],
//                 ),
//               ),
//               Form(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: SizedBox(
//                         width: 85,
//                         height: 85,
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Colors.blue, width: 2)),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Colors.red, width: 3)),
//                           ),
//                           onSaved: (pin1) {},
//                           onChanged: (value) {
//                             if (value.length == 1) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           },
//                           style: Theme.of(context).textTheme.headline6,
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: SizedBox(
//                         width: 85,
//                         height: 85,
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Colors.blue, width: 2)),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.red)),
//                           ),
//                           onSaved: (pin2) {},
//                           onChanged: (value) {
//                             if (value.length == 1) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           },
//                           style: Theme.of(context).textTheme.headline6,
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: SizedBox(
//                         width: 85,
//                         height: 85,
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Colors.blue, width: 2)),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.red)),
//                           ),
//                           onSaved: (pin3) {},
//                           onChanged: (value) {
//                             if (value.length == 1) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           },
//                           style: Theme.of(context).textTheme.headline6,
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: SizedBox(
//                         width: 85,
//                         height: 85,
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Colors.blue, width: 2)),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.red)),
//                           ),
//                           onSaved: (pin4) {},
//                           onChanged: (value) {
//
//
//                             if (value.length == 1) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           },
//                           style: Theme.of(context).textTheme.headline6,
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Haven't Received the Verification Code?",
//                       style: TextStyle(color: Colors.white, fontSize: 17)),
//                   TextButton(
//                     child: Text(
//                       'Resend',
//                       // style: TextStyle(fontSize: 17)
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => home(),
//                         ),
//                       );
//                     },
//                   )
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 15),
//                 child: ElevatedButton(
//                     style: ButtonStyle(
//                         shape: MaterialStatePropertyAll(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)))),
//                     onPressed: () async{
//                       PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhone.verify, smsCode: smsCode);
//
//                       // Sign the user in (or link) with the credential
//                       await auth.signInWithCredential(credential);
//
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => home(),
//                         ),
//                       );
//                     },
//                     child: const Text(
//                       "Verify Authentication Code",
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     )),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyVerify extends StatefulWidget {
  const MyVerify({Key? key}) : super(key: key);


  @override
  State<MyVerify> createState() => _MyVerifyState();
}
var code="";

class _MyVerifyState extends State<MyVerify> {
  final FirebaseAuth auth= FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

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
              Pinput(
                length: 6,
                onChanged: (value){
                  code=value;
                }
                ,

                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,

                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: ()
    async{
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhone.verify, smsCode: code);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));

                    },
                    child: Text("Verify Phone Number")),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          'phone',
                              (route) => false,
                        );
                      },
                      child: Text(
                        "Edit Phone Number ?",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}