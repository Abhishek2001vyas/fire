import 'package:fire3/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'utils/utils.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  TextEditingController tit = TextEditingController();
  TextEditingController Des = TextEditingController();
  TextEditingController da = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.ref('Addtodo');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Add TODO      ")),
      ),
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50.0, left: 30, right: 30, bottom: 10),
          child: Container(
            child: TextFormField(
                keyboardType: TextInputType.text,
                controller: tit,
                decoration: InputDecoration(
                    hintText: "Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)))),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 30, right: 30, bottom: 10),
          child: Container(
            child: TextFormField(
                keyboardType: TextInputType.text,
                controller: Des,
                decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)))),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 30, right: 30, bottom: 10),
          child: Container(
            child: TextFormField(
                keyboardType: TextInputType.datetime,
                controller: da,
                decoration: InputDecoration(
                    hintText: "date",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)))),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        ElevatedButton(
            onPressed: () {
              String id=DateTime.now().microsecondsSinceEpoch.toString();
              databaseRef
                  .child(id)
                  .set({
                'id':id,
                'Title': tit.text.toString(),
                'Description': Des.text.toString(),
                'date': da.text.toString(),
              }).then((value) {
                Utils().toastMessage('todo added');
              }).onError((error, stackTrace) {});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home(),
                  ));
            },
            child: Text("Add"))
      ]),
    );
  }
}
