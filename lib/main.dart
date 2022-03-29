import 'package:flutter/material.dart';
import 'package:project/entry2.dart';
import 'package:project/start.dart';
import 'package:project/student.dart';
//import 'package:project/student.dart';
import 'data.dart';
import 'entry.dart';
import 'infstud.dart';
import 'loding.dart';
import 'doctorpage.dart';
import 'nefication.dart';
import 'suden2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    // TODO: implement initState
    super.initState();

    go();
  }
  Future go() async{
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => dataloding()),
      );

      });

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    //appBar: AppBar(backgroundColor: Colors.black,title: Text("DNA SCHOLARSHIP"),),
    body: Center(
    child: Container(
    height: 300,
    width: 300,
    child: Center(
    child: Image.asset("image/mylogo.png")
    )
    ),
    )
    );}

}

