import 'package:flutter/material.dart';
class TaskCardWidget extends StatelessWidget {
  const TaskCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      padding:const EdgeInsets.symmetric(vertical:32,horizontal:24),
      child:const Text("Get Started!",style:TextStyle(
        fontSize:24.0,
        fontWeight:FontWeight.bold,
        color:Colors.black

      )),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(24.0)
      ),
    );
  }
}
