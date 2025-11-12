import 'package:flutter/material.dart';

class MainPanel extends StatelessWidget {
  final int taskAmount;
  final int taskLeft;
  const MainPanel({
    super.key,
    required this.taskAmount,
    required this.taskLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total Task $taskAmount",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Task Done ✔️ $taskLeft",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
