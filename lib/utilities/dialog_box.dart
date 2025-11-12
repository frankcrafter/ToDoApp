import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  const DialogBox({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(10, 0, 10, 60),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AlertDialog(),
          Text(
            "New Task",
            style: TextStyle(
              color: Colors.grey[500],
              letterSpacing: 1,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 280,
                child: TextField(
                  controller: controller,
                  style: TextStyle(color: Colors.grey[300]),
                  decoration: InputDecoration(
                    hintText: "Enter New Task",
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey[900]!,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey[800]!,
                      ),
                    ),
                  ),
                ),
              ),
              MyButton(icon: Icon(Icons.add), onPressed: onSave),
            ],
          ),
        ],
      ),
    );
  }
}
