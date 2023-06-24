import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';


class Webvw extends StatefulWidget {
  const Webvw({Key? key,required this.weburl}) : super(key: key);
  static const String id= "webvw";
  //final TextEditingController weburl;
  final String weburl;
  @override
  State<Webvw> createState() => _WebvwState(weburl);
}

class _WebvwState extends State<Webvw> {
  _WebvwState(this.weburl);
  String weburl;
  //TextEditingController weburl =TextEditingController(text : 'https://www.youtube.com');
   //late String weburl1 = this.weburl.text.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  WebViewWidget(controller: cont(weburl),),
    );
  }
}






WebViewController cont(String weburl) {
  return WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Colors.grey)
    ..setNavigationDelegate(NavigationDelegate(
      onProgress: (int progress) {
        
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://flutter.dev')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
    )
    ..loadRequest(Uri.parse('${weburl}'));
}

//'https://www.youtube.com/

