import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_flutter/views/listview.dart';

void main() => runApp(TestListView());
 final picUrl = "https://oimagea5.ydstatic.com/image?id=-5285314247220546696&product=adpublish&w=520&h=347";
class MyAPP extends StatelessWidget{
 
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "this is flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("this is the Appbar")),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.lightBlue,
            child: RichText(
              text: TextSpan(text: "《Flutter 练习》",
              style: TextStyle(color: Colors.red),
              children: <TextSpan>[
                TextSpan(text: "一千年以后",style: TextStyle(
                  color: Colors.purple
                  ),
                ),
                TextSpan(text: "江南")
              ]
              )
              ),
          )
        ),
        floatingActionButton: FloatingActionButton(
          child:  GestureDetector(
            child: Text("点击"),
            onTap:(){
                Fluttertoast.showToast(msg: "点击");
                // showAlertDialog(context);
            }
          )
      ),
      ),
    );
  }


}


/*
* alertdialog
* */
class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: Text(
            'AlertDialog',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          color: Colors.green,
        ),
      ),
    );
  }

} 

 void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text('this is alertdialog'),
            title: Center(
                child: Text(
              '标题',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('确定')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('取消')),
            ],
          );
        });
  }




