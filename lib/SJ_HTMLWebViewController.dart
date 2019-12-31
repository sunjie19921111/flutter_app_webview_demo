import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:dio/dio.dart';

class HTMLWebViewController extends StatefulWidget {
  @override
  _HTMLWebViewControllerState createState() => _HTMLWebViewControllerState();
}

class _HTMLWebViewControllerState extends State<HTMLWebViewController> {

  String content;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {

    if(content == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text("加载HTML"),
        ),
        body: Container(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("加载HTML"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: false,
        padding: EdgeInsets.all(0),
        child: Html(data: content),
      ),
    );
  }


  _loadData() async {
    Map<String, dynamic> params = {"id": "2202"};
    String url = "http://47.110.124.138:8081/stock/api/newsdetail/";

    Response response;
    response = await Dio().get(url, queryParameters: params);
    setState(() {
      content = response.data["data"]["content"];
    });
  }
}
