import 'package:flutter/material.dart';
import 'package:project/student.dart';
import 'package:project/suden2.dart';

import 'nefication.dart';

var btcolors = Colors.red;


class doctor extends StatefulWidget {
  const doctor({Key? key}) : super(key: key);

  @override
  _doctorState createState() => _doctorState();
}

class _doctorState extends State<doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          Image.asset(
          "image/mylogo.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
                
                // SizedBox(height: 20,),
                Container(
                  child: Column(children: [
                    new Text("دكتورة براء احمد ",
                        style: new TextStyle(
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        )),
                    new Text("برمجه- المرحله الثالث ",
                        style: new TextStyle(
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        )),
                  ]),
                )
              ],
            ),
            Center(
                child: Container(
                    height: 200,
                    width: 200,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: btcolors),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          btcolors = Colors.green;

                        });
                      },
                      icon: Icon(
                        Icons.not_started_outlined,
                        size: 80,
                        color: Colors.white,
                      ),
                    ))),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => studen2()),
                                );
                              });
                            },
                            child: Text(
                              "الحضور",
                            ),
                            //style: TextStyle(fontSize: 20, color: Colors.black),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.deepPurple,
                              onSurface: Colors.grey,
                              elevation: 5,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            child: Text(
                              "جدول المحاضرات",
                            ),
                            //style: TextStyle(fontSize: 20, color: Colors.black),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.deepPurple,
                              onSurface: Colors.grey,
                              elevation: 5,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                      ]),

                      SizedBox(
                        height: 30,
                      ),
                      //SizedBox(height: 30,),
                      Column(children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => studentlist()),
                                );
                              });
                            },
                            child: Text(
                              "سجل الطلاب",
                            ),
                            //style: TextStyle(fontSize: 20, color: Colors.black),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.deepPurple,
                              onSurface: Colors.grey,
                              elevation: 5,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => nefiction()),
                                );
                              });
                            },
                            child: Text(
                              "ارسال تنبيه",
                            ),
                            //style: TextStyle(fontSize: 20, color: Colors.black),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.deepPurple,
                              onSurface: Colors.grey,
                              elevation: 5,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                      ])
                    ])),
            Center(
              // padding: new EdgeInsets.all(30),
                child: Container(
                    height: 50,
                    //width: 50,
                    // alignment: Alignment.bottomCenter,
                    // padding: new EdgeInsets.all(30),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      //  crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up,
                            size: 50,
                            color: Colors.black54,
                          ),
                          SingleChildScrollView(
                              child: new Text("اشعارات",
                                  style: new TextStyle(
                                    fontSize: 20,
                                    // fontFamily: 'Roboto',
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  )))
                        ]))),



          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('back'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Colors.white,
                onSurface: Colors.grey,
                elevation: 5,
                minimumSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),]))
    ) ;
  }
}
