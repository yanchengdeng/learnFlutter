import 'package:flutter/material.dart';

import '../main.dart';


class TestContainer extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){

    return MaterialApp(
      title: "learn container",
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(title :Text("this is container")),
        body: Center(
          child: Container(
            child: Text("hello  container",style: TextStyle(color: Colors.red,fontSize: 25)),
            width: 400,
            height: 400,
            // padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.redAccent,Colors.blueAccent,Colors.greenAccent]),
              image: DecorationImage(image: NetworkImage(picUrl),fit: BoxFit.contain),
              border: Border(
                    left:BorderSide(color: Colors.red),
                    top:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
        )
      ),

    );

  }
}