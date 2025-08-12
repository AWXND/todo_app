import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/utils/dialogbox.dart';
import 'package:todo_app/utils/todo_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() =>
      _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Todo> toDoList = [
    Todo(
      taskname: 'Beli Sayur',
      taskCompleted: false,
    ),
    Todo(
      taskname: 'Beli Ayam',
      taskCompleted: false,
    ),
  ];

  void checkBoxChange(bool? value, int index) {
    setState(() {
      toDoList[index].taskCompleted =
          !toDoList[index].taskCompleted;
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) => DialogBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
        onPressed: createNewTask,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          final todolist = toDoList[index];
          return ToDoWidget(
            taskName: todolist.taskname,
            taskCompleted: todolist.taskCompleted,
            onChanged:
                (value) =>
                    checkBoxChange(value, index),
          );
        },
      ),
    );
  }
}
