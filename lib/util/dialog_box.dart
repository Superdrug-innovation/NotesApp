import 'package:flutter/material.dart';
import 'package:notes_app/main.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: superdrugColour,
      content: Container(
        height: 120,
        child: Column(children:[
          TextField(
            decoration: 
            InputDecoration(border: UnderlineInputBorder(),
            hintText: "Add a new task",
            ),
          ),
        ]),
        ),
    );
  }
}