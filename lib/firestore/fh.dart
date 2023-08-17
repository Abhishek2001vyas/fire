import 'package:fire3/Ser/firebase.dart';
import 'package:fire3/add%20todo.dart';
import 'package:fire3/login.dart';
import 'package:fire3/update.dart';
import 'Ser/firebase.dart';
import '';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database_platform_interface/firebase_database_platform_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'fa.dart';

class Fh extends StatefulWidget {
  const Fh({super.key});

  @override
  State<Fh> createState() => _FhState();
}

class _FhState extends State<Fh> {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance.collection("Addtodo").snapshots();


  TextEditingController edit = TextEditingController();
  TextEditingController editdes = TextEditingController();
  CollectionReference ref = FirebaseFirestore.instance.collection('Addtodo');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(actions: [
        ElevatedButton(
            onPressed: () async {
              await Fir().sigOut();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyPhone(),
                  ));
            },
            child: Text("logout"))
      ]),
      body: Column(children: [
        Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: firestore,
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot) {

            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
              return ListTile(
                onLongPress: (){
                  ref.doc(snapshot.data!.docs[index]['id'].toString()).delete();
                },
                onTap: (){
                  ref.doc(snapshot.data!.docs[index]['id'].toString()).update(
                      {'Title':'vcx,mnzcklxjnvlkzklcnvlk dzmkzxmvkmzlxkv lzvmlzlmlvmsdlknklgnklsdjglkvjndskvklndlkv'});
                },
                title:Text(snapshot.data!.docs[index]['Title'].toString()) ,
              );
            },);
          },),
        )


      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, size: 40),
          backgroundColor: Colors.blue,
          onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Fa(),));
          }),
    );
  }
  Future<void> myshowmydialog(
      String title, String description, String id) async {
    edit.text = title;
    editdes.text = description;
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("update"),
          content: Container(
            child: Column(
              children: [
                Container(
                    child: TextFormField(
                      controller: edit,
                      decoration: InputDecoration(
                          hintText: "edit title",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    )),
                Container(
                    child: TextFormField(
                      controller: editdes,
                      decoration: InputDecoration(
                          hintText: "edit description",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    )),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("cancel")),
            TextButton(
                onPressed: () {
        },
                child: Text("update")),
          ],
        );
      },
    );
  }
}
