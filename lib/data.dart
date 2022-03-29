import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/start.dart';

import 'loding.dart';

class datastudent extends StatefulWidget {
  const datastudent({Key? key}) : super(key: key);

  @override
  _datastudentState createState() => _datastudentState();
}

class _datastudentState extends State<datastudent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView
              (child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          //SizedBox(height: 20,),
          Container(
              child: Image.asset(
            "image/mylogo.png",
            height: 100,
            width: 100,
            fit: BoxFit.fitWidth,
          )),
          Container(
              //height: 200,
              child:
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                new Text("Tuqa Noori altemimi",
                    style: new TextStyle(
                      fontSize: 30,
                      fontFamily: 'Roboto',
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height:30,
                ),
                Image.network(
                  "https://th.bing.com/th/id/OIP.Kh4OS2LQhhv_lpkwDgWf1gHaHV?w=165&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    child: Column(
                  children: [
                    new Text("المرحله الرابعه",
                        style: new TextStyle(
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        )),
                    //SizedBox(height: 100,),
                    new Text("قسم علوم الحاسوب",
                        style: new TextStyle(
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        )),

                    SizedBox(height: 30,),
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          // alignment: Alignment.center,
                          //margin: EdgeInsets.all(20),
                          height: 30,
                          width: 150,
                          color: Colors.deepPurpleAccent,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: Text(
                                  " جدول المواد  ",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )),

                                Icon(
                                  Icons.list,
                                  size: 30,
                                  color: Colors.white,
                                )
                              ]),
                        )),
                    SizedBox(height: 30,),
                     Container(
                        height: 50,
                        //width: 50,
                       // alignment: Alignment.bottomCenter,
                       // padding: new EdgeInsets.all(30),
                        child:Column(
                           // mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.keyboard_arrow_up,size: 50,color: Colors.black54,),
                         SingleChildScrollView
                           (child:new Text("اشعارات",
                                style: new TextStyle(
                                  fontSize: 20,
                                  // fontFamily: 'Roboto',
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                ))),  ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('back!'),
                                style: ElevatedButton.styleFrom(
                                  onPrimary: Colors.black,
                                  primary: Colors.white,
                                  onSurface: Colors.grey,
                                  elevation: 5,
                                  minimumSize: Size(100, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),]
                    ))]))]))] ,
                ))
        ));
       }
}
