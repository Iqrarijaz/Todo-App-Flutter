import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/Widgets/task_card_widget.dart';
import 'package:todo/screens/taskpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            width: double.infinity,
            color: Colors.white,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:100,
                      width:100,
                      margin: const EdgeInsets.only(
                        bottom: 32.0,
                        top: 32.0,
                      ),
                      child: const Image(
                          image: AssetImage('assets/images/gif.gif')),
                    ),
                    Expanded(
                      child: ScrollConfiguration(
                        behavior:NoGlowBehaviour(),
                        child: ListView(
                          children: [
                            TaskCardWidget(
                                title: 'Get Started !',
                                description:
                                    "Hello User ! Welcome to WHAT-TODO app, This is a default task that you can edit"),
                            TaskCardWidget(
                                title: 'Get Started !',
                                description:
                                    "Hello User ! Welcome to WHAT-TODO app, This is a default task that you can edit"),
                            TaskCardWidget(
                                title: 'Get Started !',
                                description:
                                    "Hello User ! Welcome to WHAT-TODO app, This is a default task that you can edit"),
                            TaskCardWidget(
                                title: 'Get Started !',
                                description:
                                    "Hello User ! Welcome to WHAT-TODO app, This is a default task that you can edit"),
                            TaskCardWidget(
                              title: '',
                              description: '',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 24.0,
                  right: 0.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const TaskPage()));
                    },
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF15133F),Color(0xFF15133C)],
                            begin:Alignment(0.0,1.0),
                            end:Alignment(0.0,1.0)
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Image(
                              image: AssetImage("assets/images/add_icon.png")),
                        )),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
