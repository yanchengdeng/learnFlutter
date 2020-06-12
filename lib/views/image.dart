import 'package:flutter/material.dart';

import '../main.dart';


class TestImage extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){

    return MaterialApp(
      title: "learn Image",
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(title :Text("this is Image")),
        body: Center( 
          child: Image.network(picUrl,repeat: ImageRepeat.repeat,fit: BoxFit.contain,colorBlendMode: BlendMode.colorBurn)
        )
      ),

    );

  }
}