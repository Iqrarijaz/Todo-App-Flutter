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
            color: const Color(0xFFe6e6e6), borderRadius: BorderRadius.circular(24.0)),
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
            Text(description.isEmpty ? "No Description Added" : description,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF868290),
                  height: 1.5,
                )),
          ],
        ));
  }
}

class ToDoWidget extends StatelessWidget {
  final String text;
  final bool isDone;

  ToDoWidget({required this.text, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(right: 12.0),
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                  color: isDone ? const Color(0xFF15133C) : Colors.transparent,
                  borderRadius: BorderRadius.circular(6.0),
                  border: isDone
                      ? null
                      : Border.all(color: const Color(0xFF868290), width: 1.5)),
              child: const Padding(
                padding: EdgeInsets.all(1.0),
                child: Image(
                    image: AssetImage("assets/images/check_icon.png")),
              )),
          Text(text.isEmpty ? "Unnamed ToDo" : text,
              style: TextStyle(
                fontSize: 16,
                color: isDone ? Colors.black : const Color(0xFF868290),
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
              )),
        ],
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildviewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
