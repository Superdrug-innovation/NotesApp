import 'package:flutter/material.dart';
import 'package:notes_app/util/dialog_box.dart';
import 'package:notes_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List toDoList = [
    ["test task", false],
    ["test task 2", false],
  ];

  void checkBoxChanged(bool? value, int index)
  {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask()
  {
    showDialog(
      context: context, 
      builder: (context){
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Testing App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.note_add)
      ),
      body: ListView.builder(
        itemCount:toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            checkboxChanged: (value) => checkBoxChanged(value, index));
        },
      ),
    );
  }
}