import 'package:flutter/material.dart';
import 'package:todo/Widgets/task_card_widget.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: Stack(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 6.0),
            child: Row(
              children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Image(
                              image:
                                  AssetImage("assets/images/back_arrow_icon.png"))),
                    ),
                    const Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: ("Enter Task Title"),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF211551))))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24.0, left: 24.0, bottom: 12.0),
            child: TextField(
                    decoration: InputDecoration(
              hintText: ("Enter description for task ..."),
              border: InputBorder.none,
            )),
          ),
          ToDoWidget(
            text: 'Create Your First ToDo Task',
            isDone: true,
          ),
          ToDoWidget(
            text: 'Create Your Second ToDo Task',
            isDone: true,
          ),
          ToDoWidget(
            text: '',
            isDone: false,
          ),
          ToDoWidget(
            text: '',
            isDone: false,
          ),
          ToDoWidget(
            text: '',
            isDone: false,
          ),
        ]),
                    Positioned(
                      bottom: 24.0,
                      right: 24.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const TaskPage()));
                        },
                        child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEC994B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Image(
                                image: AssetImage("assets/images/delete_icon.png"))),
                      ),
                    )
                  ],
                ))));
  }
}
