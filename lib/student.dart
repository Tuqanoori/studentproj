import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' ;
import 'package:intl/intl.dart' ;
import 'package:project/entry.dart';
var name=[""];
var dpats=[""];


class studentlist extends StatefulWidget {
  const studentlist({Key? key}) : super(key: key);

  @override
  _studentlistState createState() => _studentlistState();
}

class _studentlistState extends State<studentlist> {
  Future GetData() async {
   var url = Uri.parse('http://localhost:3000/users');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);

    print(body);
    setState(() {
      name.clear();
      dpats.clear();
      for (var i = 0; i < list2.length; i++) {
        name.add(list2[i]["name"]);
        dpats.add(list2[i]["stage"]);

       //print("stage");

      };
    });
  }



      @override
void initState(){
    super.initState();
    GetData();

}



@override

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
      SizedBox(
      height: 50,
      ),
      Container(
        // alignment: Alignment.center,
        //margin: EdgeInsets.all(20),
        height: 50,
        width: 300,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          color: Colors.deepPurpleAccent,),

        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 30,
              ),
              Center(
                  child: Text(
                " سجل الطلاب ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.list,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 30,
              ),
            ]),
      ),

      Expanded(
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 80,
                    width: 300,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 5,
                        shadowColor: Colors.black54,
                        child: Container(
                            height: 70,
                            width: 350,
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text(("${name[index]}"),
                                            style: new TextStyle(
                                              fontSize: 15,
                                              // fontFamily: 'Roboto',
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        Text(
                                            " ${dpats[index]}",
                                            style: new TextStyle(
                                              fontSize: 8,
                                              // fontFamily: 'Roboto',
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                            ))
                                      ]),
                                  SizedBox(
                                    width: 50,
                                  ),
                                ]))));
              })),
              ElevatedButton(
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
              ),
    ]));
  }
}
