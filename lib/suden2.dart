import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:project/start.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' ;
var name=[""];
var dpats=[""];
class studen2 extends StatefulWidget {
  const studen2({Key? key}) : super(key: key);

  @override
  _studen2State createState() => _studen2State();
}

class _studen2State extends State<studen2> {
  Future GetData() async {
    var url = Uri.parse('http://localhost:3000/');
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
      body:Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    " سجل الحضور ",
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
       Expanded(child:  ListView.builder(
          itemCount: name.length,
            itemBuilder: (BuildContext context,int index) {
              return Container(
                child:Card(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),

                ),
                  elevation: 5,
                  child: Container(
                    height: 100,
                    width: 200,
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                       children:[Text("${name[index]}"),
                        Text("${dpats[index]}"),
                      ],
                    ),
                  ])

                )
              ));
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
