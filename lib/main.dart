import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeMethod() {
    setState(() {
      message=" you clicked the button";
    });

  }
  String message="click the button";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
            title:Text("first Application"),),
        body:Center(child:Column(
          children: [
            Text(message),
            FlatButton(child:Text('click me') ,onPressed: (){
              changeMethod();
            },),
          ],
        )),
      ),
    );
  }

}



