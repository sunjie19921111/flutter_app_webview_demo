import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

class URLWebViewController extends StatelessWidget {

  CupertinoActivityIndicator _indicator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("web url"),
      ),
      body: Container(
        child: WebView(
          initialUrl: "https://juejin.im/user/5bd66f1ce51d457a7e4fa484",
          javascriptMode: JavascriptMode.unrestricted,
          onPageFinished: (url){
            print(url);
          },
          onWebViewCreated: (vc){

          },
        ),
      ),
    );
  }

}
