import 'package:flutter/material.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  final String taskName;
  final bool? taskCompleted;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        20,
        10,
        20,
        10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Checkbox(
                activeColor: Colors.black38,
                value: taskCompleted,
                onChanged: onChanged,
              ),
              Text(
                taskName,
                style: TextStyle(
                  color:
                      taskCompleted!
                          ? Colors.black38
                          : Colors.black,
                  decoration:
                      taskCompleted!
                          ? TextDecoration
                              .lineThrough
                          : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
