// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
//
//
//
//
//
//
// class Update extends StatefulWidget {
//   const Update(String title, String description, String id, {super.key});
//
//   @override
//   State<Update> createState() => _UpdateState();
// }
//
// class _UpdateState extends State<Update> {
//   TextEditingController edit = TextEditingController();
//   TextEditingController editdes = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  AlertDialog(
//          content: Column(
//           children: [
//             Container(
//                 child: TextFormField(
//                   controller: edit,
//                   decoration: InputDecoration(
//                       hintText: "edit title",
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15))),
//                 )),
//             Container(
//                 child: TextFormField(
//                   controller: editdes,
//                   decoration: InputDecoration(
//                       hintText: "edit description",
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15))),
//                 )),
//           ],
//         ),
//
//     actions: [
//
//     TextButton(
//     onPressed: () {
//     Navigator.pop(context);
//     },
//     child: Text("cancel")),
//     TextButton(
//
//     onPressed: () {
//     Navigator.pop(context);
//     ref.child(id).update({
//     'Title': edit.text.toString(),
//     'Description': editdes.text.toString(),
//     });
//     },
//     child: Text("update")),
//     ],
//     );
//     );
//   }
// }
// ),
// ),
