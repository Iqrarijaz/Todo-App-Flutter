import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/Widgets/task_card_widget.dart';

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
            padding:
                const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
            width: double.infinity,
            color: const Color(0xFFF6F6F6),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 32.0,
                      ),
                      child: const Image(
                          image: AssetImage('assets/images/logo.png')),
                    ),
                    Expanded(
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
                    )
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    width:60,
                      height:60,
                      decoration: BoxDecoration(color: const Color(0xFF7349FE),
                        borderRadius: BorderRadius.circular(20),),
                      child: const Image(image:AssetImage("assets/images/add_icon.png"))),
                )
              ],
            )),
      ),
    );
  }
}
