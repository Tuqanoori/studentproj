import 'dart:html';

import 'package:flutter/material.dart';
import 'entry.dart';
import 'loding.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:project/start.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart' as dateo;

var fullname = TextEditingController();
var scation = TextEditingController();
var stage = TextEditingController();
var email = TextEditingController();
var phonenumber = TextEditingController();
var city = TextEditingController();
var region = TextEditingController();
var password = TextEditingController();
var  tabe=TextEditingController();

class infstud extends StatefulWidget {
  const infstud({Key? key}) : super(key: key);
  @override
  _infstudState createState() => _infstudState();
}

enum SingingCharacter { lafayette, jefferson }

class _infstudState extends State<infstud> {
  Future Add_data() async {
    DateTime now = DateTime.now();
    String formattedDate = dateo.DateFormat('yyyy-MM-dd').format(now);
    String formattedDate2 = dateo.DateFormat('yyyy-MM-dd HH:mm:ss').format(now);

    var url = Uri.parse('http://localhost:3000/add');
    Map<String, String> headers = {"Content-type": "application/json"};

    String json = '{"name": "${fullname.text}",'
        ' "scation": "${scation.text}",'
        ' "stage": "${stage.text}",'
        ' "email": "${email.text}",'
        ' "phonenumber": "${phonenumber.text}",'
        ' "city": "${city.text}",'
        ' "region": "${region.text}",'
        ' "tabe": "${tabe.text}",'
        ' "password": "${password.text}"}';


    Response response = await post(url, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body1 = response.body;
    var data = jsonDecode(body1);
    print(data);
    var res = data["code"];

    if (res == null) {}
  }


  SingingCharacter? _character = SingingCharacter.lafayette;
  //_DropDownExampleState createState() => _DropDownExampleState();
  @override
 // bool _value = false;
  //int val = -1;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
          // SizedBox(height: 20,),
          Container(
              child:Image.asset("image/mylogo.png",
            height: 50,
            width: 50,
            fit: BoxFit.fitWidth,
          )),
          Container(
            height: 50,
            //width: 50,
            //alignment: Alignment.center,
            //padding: new EdgeInsets.only(left: 33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Text(
                  "جامعه التكنولوجيا والاعلام",
                  style: new TextStyle(
                    fontSize: 20,
                    //fontFamily: 'Roboto',
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      new Text(" Future ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              //font color
                              fontWeight: FontWeight.bold,
                              //letterSpacing: 10, //letter spacing
                              decoration: TextDecoration.underline,
                              //make underline
                              decorationColor: Colors.purple,
                              //text decoration 'underline' color
                              decorationThickness: 2,
                              //decoration 'underline' thickness
                              fontStyle: FontStyle.normal)),
                      new Text("of E-unversity",
                          style: new TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          )), //SizedBox(width: 5,
                    ]),
              ],
            ),
          ),
          Center(
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 100,
                      width: 500,
                      child:TextField(
                  //obscureText: true,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '"   الاسم الكامل للطالب',
                  ),
                  controller: fullname,
                ),)),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 100,
                      width: 500,
                      child: Container(
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "المرحلة",
                    ),
                    controller: scation,
                  ),
                ),)),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 500,
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "القسم",
                        ),
                        controller: stage,
                      ),
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 500,
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "البريد الاكتروني",
                        ),
                        controller: email,
                      ),
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 500,
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "رقم الهاتف",
                        ),
                        controller: phonenumber,
                      ),
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 500,
                      child: TextField(
                        // obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "المحافضه",
                        ),
                        controller: city,
                      ),
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 500,
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "المنطقة",
                        ),
                        controller: region,
                      ),
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 500,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "الرقم السري",
                        ),
                        controller: password,
                      ),
                    )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 100,
                              width: 500,
                              child: TextField(
                                //obscureText: true,
                                decoration:InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Are you doctor or student",
                                ),
                                controller:tabe ,
                              ),
                            )),

              Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: new Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 2, color: Colors.black54)),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black54,
                              ),
                            )),
                      ),
                    ]),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Add_data();
                      });
                      Navigator.pop(context);
                    },
                    child: Text(
                      "انشاء حساب",
                    ),
                    //style: TextStyle(fontSize: 20, color: Colors.black),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Colors.deepPurple,
                      onSurface: Colors.grey,
                      elevation: 5,
                      minimumSize: Size(250, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              ])))]),
            )));
  }
}
