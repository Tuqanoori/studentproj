import 'package:flutter/material.dart';

import 'loding.dart';
class dataloding extends StatefulWidget {
  const dataloding({Key? key}) : super(key: key);

  @override
  _datalodingState createState() => _datalodingState();
}

class _datalodingState extends State<dataloding> {
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
          MaterialPageRoute(builder: (context) => home()),
        );

      });

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child:
      Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(
      height: 20,
    ),
    Container( child:Image.asset("image/mylogo.png",
    height: 250,
    width: 250,
    fit: BoxFit.fitWidth,
    )),
    Container(
    height: 200,
    //width: 50,
    alignment: Alignment.bottomCenter,
    padding: new EdgeInsets.all(30),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
     new Text("تحميل البيانات",
    style: new TextStyle(
    fontSize: 25,
    fontFamily: 'Roboto',
    color: Colors.black,
    fontWeight: FontWeight.bold,
    )),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.data_usage,size: 30,color: Colors.black,),]
    )]))])));}
  }

