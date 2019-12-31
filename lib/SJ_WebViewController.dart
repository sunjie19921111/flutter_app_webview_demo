import 'package:flutter/material.dart';
import 'SJ_HTMLWebViewController.dart';
import 'SJ_LocalWebViewController.dart';
import 'SJ_URLWebViewController.dart';

// 1.flutter 加载html
// 2.futter 加载本地html
// 3.flutter 加载url

class WebviewController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("WebView Demo"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("加载本地HTML"),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return LocalWebViewController();
                }));
              },
            ),
            ListTile(
              title: Text("加载HTML"),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return HTMLWebViewController();
                }));
              },
            ),
            ListTile(
              title: Text("加载web url"),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return URLWebViewController();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
