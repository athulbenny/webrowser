import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webrowser/webvw.dart';
import 'package:webview_flutter/webview_flutter.dart';



class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  static final String id="Page";
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController weburl =TextEditingController();
  //String weburl="https://www.youtube.com/";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white,Colors.purple,Colors.green,Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter
              ),
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: weburl,
                ),
                SizedBox(height: 10,),
                IconButton(icon: Icon(Icons.search),onPressed: ()=>{
                Navigator.of(context).push(MaterialPageRoute<void>(builder: (context){
                  return Webvw(weburl: weburl.text);
                }))
                },),


              ],
            ),
          ),
        ),
        //body: WebViewWidget(controller: cont(weburl),),
      ),
    );
  }
}


