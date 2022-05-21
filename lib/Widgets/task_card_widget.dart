import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String description;

  TaskCardWidget({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(24.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title.isEmpty ? "(Unnamed Task)" : title,
                style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Text(description.isEmpty ? "No Description Added": description,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF868290),
                  height: 1.5,
                )),
          ],
        ));
  }
}
