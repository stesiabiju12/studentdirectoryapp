import 'package:flutter/material.dart';

class yyy extends StatefulWidget {
  const yyy({super.key});

  @override
  State<yyy> createState() => _yyyState();
}

class _yyyState extends State<yyy> {
  TextEditingController name=TextEditingController();
  TextEditingController age=TextEditingController();
  TextEditingController department=TextEditingController();
  TextEditingController phone =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text("STUDENT DIRECTORY APP"), centerTitle: true,),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
          context: context, builder: (context) {
          return AlertDialog(title: Text("Add students"),
            content: Column(
              children: [TextField(controller: name ,decoration: InputDecoration(labelText: "Name"
              , border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.black),
            ),
            ),),TextField(controller: age,decoration: InputDecoration(labelText: "Age"
                , border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),),TextField(controller: phone ,decoration: InputDecoration(labelText: "phone no"
                , border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),),TextField(controller: department,decoration: InputDecoration(labelText: "Department"
                , border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),),ElevatedButton(onPressed: (){}, child: Text("ADD"))
          ]
          )
          ,
          );
        },
        );
      },
        child: Icon(Icons.add),
      ),
    );
  }
}





