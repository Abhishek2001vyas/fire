import 'package:fire3/add%20todo.dart';
import 'package:fire3/login.dart';
import 'package:fire3/update.dart';
import 'Ser/firebase.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database_platform_interface/firebase_database_platform_interface.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref("Addtodo");
  TextEditingController edit = TextEditingController();
  TextEditingController editdes = TextEditingController();

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
          child: FirebaseAnimatedList(
            query: ref,
            defaultChild: Text("loading"),
            itemBuilder: (context, snapshot, animation, index) {
              final title = snapshot.child('Title').value.toString();
              final description =
                  snapshot.child("Description").value.toString();

              return ListTile(
                trailing: PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(

                      onTap: () {
                        // Navigator.pop(context);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Update(title, description,
                        //         snapshot.child("id").value.toString())));
                        // myshowmydialog(title, description,
                        //     snapshot.child("id").value.toString());
                      },
                      value: 1,
                      child: ListTile(
                          leading: Icon(Icons.edit), title: Text("edit")),
                    ),

                    PopupMenuItem(
                      onTap: () {
                        ref
                            .child(snapshot.child("id").value.toString())
                            .remove();
                      },
                      value: 2,
                      child: ListTile(
                          leading: Icon(Icons.delete), title: Text("delete")),
                    ),
                  ],
                  onSelected: (int menu){
                    if(menu==1){
                      myshowmydialog(title, description,
                          snapshot.child("id").value.toString());
                    }
                  },
                ),
                title: Text(snapshot.child('Title').value.toString()),
                subtitle: Text(snapshot.child('Description').value.toString()),
              );
            },
          ),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, size: 40),
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Addtodo(),
                ));
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
                Navigator.pop(context);
                ref.child(id).update({
                  'Title': edit.text.toString(),
                  'Description': editdes.text.toString(),
                });
              },
              child: Text("update")),
        ],
      );
    },
  );
}
}



