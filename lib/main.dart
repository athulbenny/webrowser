import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webrowser/webvw.dart';
import 'page.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Page1.id,
    routes: {
      Page1.id : (context) => Page1(),
    },
  ));
}



