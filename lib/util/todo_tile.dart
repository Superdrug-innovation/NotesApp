import 'package:flutter/material.dart';
import 'package:notes_app/main.dart';

class ToDoTile extends StatelessWidget{

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? checkboxChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.checkboxChanged
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right:25.0, top:25.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: superdrugColour,
          borderRadius: BorderRadius.circular(12)
          ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged: checkboxChanged,
              activeColor: Colors.transparent),
            Text(
              taskName,
              style: TextStyle(decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none),
              )
            ], 
          ),
      ),
    );
  }
}