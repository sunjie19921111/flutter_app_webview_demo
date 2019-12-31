import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class LocalWebViewController extends StatelessWidget {

  WebViewController _webViewController;
  String filePath = "data/user_protocol.html";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("本地html"),
      ),
      body: Container(
        child: WebView(
          initialUrl: "",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: ((WebViewController vc){
            _webViewController = vc;
            _loadlocalData();
          }),
        ),
      ),
    );
  }
  _loadlocalData() async {
    String fileHtmlContents = await rootBundle.loadString(filePath);
    _webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
        mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}