import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'data.dart';
import 'datas.dart';
import 'doctorpage.dart';

var emailController = TextEditingController();
var passwordController = TextEditingController();


class entry2 extends StatefulWidget {
  const entry2({Key? key}) : super(key: key);
  @override
  _entry2State createState() => _entry2State();
}
class _entry2State extends State<entry2> {
  Future GetData() async {

    var url = Uri.parse('http://localhost:3000/Users/');
    Map<String, String> headers = {"Content-type": "application/json"};
    // var response = await http.post(url, body: json.encode(data[email]));
    Response response= await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);
print(list2);
    setState(() {
      for(var i = 0 ; i < list2.length;i++){
        if (email1!=null&&password1!=null){
          if ((list2[i]['email'])==email1&&(list2[i]['password'])==password1&&(list2[i]['tabe'])=='doctor'){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => doctor()));
          }
          else {   Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => datastudent())); }

break;
        print(list2[i]['day']);


      };


    }});



    // TODO convert json to object...
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset("image/mylogo.png",
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
                  ClipRRect(borderRadius:BorderRadius.circular(25),
                      child:Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            disabledBorder:InputBorder.none ,
                            errorBorder:InputBorder.none,
                            border: OutlineInputBorder(),
                            labelText: ' Email',
                          ),
                        ),
                      )),
                  ClipRRect(borderRadius:BorderRadius.circular(25),
                      child:Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: const InputDecoration(
                            disabledBorder:InputBorder.none ,
                            errorBorder:InputBorder.none,
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      )),
                  TextButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    child: const Text(
                      'Forgot Password',
                    ),
                  ),
                  ClipRRect(borderRadius:BorderRadius.circular(25),
                      child: Container(
                          height: 40,
                          width: 500,
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: ElevatedButton(
                            child: const Text('تسجيل الدخول'),
                            onPressed: () {
                             email1 =emailController.text;
                             password1=passwordController.text;
                                // print(email1);
                             GetData();

                             // Navigator.of(context).push(MaterialPageRoute(builder: (context) => doctor()));
                            },
                          ))),
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
