import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/Models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({Key? key, required this.onDelete, required this.todo})
      : super(key: key);

  final Todo todo;
  final Function(Todo) onDelete;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[200],
      ),
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  DateFormat('dd/MM/yyyy - HH:mm').format(todo.dateTime),
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                child: Text(
                  todo.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  onDelete(todo);
                },
                child: Icon(
                  Icons.delete,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
