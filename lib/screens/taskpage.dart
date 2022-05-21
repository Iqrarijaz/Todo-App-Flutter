import 'package:flutter/material.dart';

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
                child: Column(children: [
                  const Padding(padding:EdgeInsets.symmetric(vertical:20.0)),
      Row(
        children:  [
          InkWell(
            onTap:(){Navigator.pop(context);
            },
            child: const Padding(
                padding: EdgeInsets.all(24.0),
                child:Image(image: AssetImage("assets/images/back_arrow_icon.png"))),
          ),
          const Expanded(
            child:TextField(
              decoration:InputDecoration(
                hintText: ("Enter Task Title"),
                border: InputBorder.none,
              ),
              style:TextStyle(
                fontSize:26,
                fontWeight:FontWeight.bold,
                color:Color(0xFF211551)

              )
            )
          )
        ],
      )
    ]))));
  }
}
