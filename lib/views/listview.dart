
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../main.dart';

class TestListView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "learn listview ",
        home: Scaffold(
         appBar: AppBar(title :Text("listView")),
          body: MyListView()
        ),

    );
  }
}

class  MyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
            children: <Widget>[
              ListTile(
                leading: Image.network(picUrl),
                title: Text("列表第一行"),
                subtitle: Text("列表第一行提示语"),
                isThreeLine: false,
                selected: true,
                onLongPress: () {
                  Fluttertoast.showToast(msg: "fdsdf ");
                },
                
              ),
                ListTile(
               leading: Image.network(picUrl),
                title: Text("列表第一行"),
                subtitle: Text("列表第一行提示语"),
                isThreeLine: false,
              ),
                ListTile(
               leading: Image.network(picUrl),
                title: Text("列表第一行"),
                subtitle: Text("列表第一行提示语"),
                isThreeLine: false,
              ),
                ListTile(
               leading: Image.network(picUrl),
                title: Text("列表第一行"),
                subtitle: Text("列表第一行提示语"),
                isThreeLine: false,
              ),
                ListTile(
               leading: Image.network(picUrl),
                title: Text("列表第一行"),
                subtitle: Text("列表第一行提示语"),
                isThreeLine: false,
              ),
                ListTile(
               leading: Image.network(picUrl),
                title: Text("列表第一行"),
                subtitle: Text("列表第一行提示语"),
                isThreeLine: false,
              )
              
            ],
          );
  }
  
}