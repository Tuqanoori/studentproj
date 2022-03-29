import 'package:flutter/material.dart';

import 'entry.dart';
import 'entry2.dart';
import 'infstud.dart';

class   home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(child: Image.asset("image/mylogo.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.fitWidth,
                      )),
                      Container(
                        height: 150,
                        //width: 50,
                        //alignment: Alignment.center,
                        //padding: new EdgeInsets.only(left: 33.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  new Text("بكم",
                                      style: new TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'Roboto',
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                      )), //SizedBox(width: 5,

                                  new Text("اهلا",
                                      style: TextStyle(
                                          fontSize: 40,
                                          //height:5, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                                          color: Colors.black45,
                                          //font color
                                          fontWeight: FontWeight.bold,
                                          //letterSpacing: 10, //letter spacing
                                          decoration:
                                          TextDecoration.underline,
                                          //make underline
                                          decorationColor: Colors
                                              .purple,
                                          //text decoration 'underline' color
                                          decorationThickness:
                                          2,
                                          //decoration 'underline' thickness
                                          fontStyle: FontStyle.normal)),
                                ]),
                            SizedBox(
                              width: 20,
                            ),
                            new Text(
                              "جامعه التكنولوجيا والاعلام",
                              style: new TextStyle(
                                fontSize: 20,
                                //fontFamily: 'Roboto',
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => infstud()),
                                        );
                                      });
                                    },
                                    child: Text(
                                      "انشاء حساب",),
                                    //style: TextStyle(fontSize: 20, color: Colors.black),
                                    style: ElevatedButton.styleFrom(
                                      onPrimary: Colors.white,
                                      primary: Colors.deepPurple,
                                      onSurface: Colors.grey,
                                      elevation: 5,
                                      minimumSize: Size(250, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30)),

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
                                              builder: (context) => entry2()),
                                        );
                                      });
                                    },
                                    child: Text(
                                      "تسجيل دخول",),
                                    //style: TextStyle(fontSize: 20, color: Colors.black),
                                    style: ElevatedButton.styleFrom(
                                      onPrimary: Colors.white,
                                      primary: Colors.deepPurpleAccent,
                                      onSurface: Colors.grey,
                                      elevation: 5,
                                      minimumSize: Size(250, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30)),

                                    ),
                                  ),
                                ),


                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 55,
                                        ),
                                        Expanded(
                                            child: Divider(
                                              color: Colors.black,
                                              height: 40,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        new Text("هل نسيت كلمه السر",
                                            textAlign: TextAlign.center,
                                            // overflow: TextOverflow.ellipsis,
                                            style: new TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Roboto',
                                              color: Colors.black45,
                                              //fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                            child: Divider(
                                              color: Colors.black,
                                              height: 40,
                                            )),
                                        SizedBox(
                                          width: 55,
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 55,
                                ),
                                Container(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          child: Container(
                                              alignment: Alignment.center,
                                              //margin: EdgeInsets.all(20),
                                              height: 30,
                                              width: 120,
                                              color: Colors.black26,
                                              child: Center(
                                                child: Text(
                                                  "(.تسجيل  الدخول كزائر",
                                                  style:
                                                  TextStyle(fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight
                                                          .bold),
                                                ),
                                              )),
                                        ),
                                      ]),
                                )
                              ]))
                    ]))));
  }

}
