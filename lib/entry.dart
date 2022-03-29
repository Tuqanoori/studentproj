import 'package:flutter/material.dart';
import 'package:project/infstud.dart';
import 'dart:convert';
import 'package:project/start.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

import 'data.dart';
import 'doctorpage.dart';

var name = "";
var dpats = "";
var tabe = "";

class entry extends StatefulWidget {
  const entry({Key? key}) : super(key: key);

  @override
  _entryState createState() => _entryState();
}

class _entryState extends State<entry> {
  get tabe_ => doctor;

  Future GetData() async {
    var url = Uri.parse('http://localhost:3000/Users/');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);
    void process() {
      if (tabe == "doctor") {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => datastudent()),
        );

        setState(() {});
      } else {
        setState(() {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => doctor()),
          );
        });
      }
    }

    @override
    void initState() {
      super.initState();
      GetData();
    }

    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController tabeController = TextEditingController();

    Widget build(BuildContext context) {
      return Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(children: <Widget>[
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Image.network(
                      "https://dnascholarship.com/assets/img/mylogo.png",
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      //width: 50,
                      //alignment: Alignment.center,
                      //padding: new EdgeInsets.only(left: 33.0),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
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
                                        // fontWeight: FontWeight.bold,
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
                                      //fontWeight: FontWeight.bold,
                                    )), //SizedBox(width: 5,
                              ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: ' Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 500,
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: ElevatedButton(
                          child: const Text('تسجيل الدخول'),
                          onPressed: () {
                            print(nameController.text);
                            print(passwordController.text);
                            print(tabeController.text);
                            GetData();
                          },
                        )),
                    Row(
                      children: <Widget>[
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ))
              ])));

    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
