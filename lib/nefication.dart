import 'package:flutter/material.dart';
import 'package:project/start.dart';

class nefiction extends StatefulWidget {
  const nefiction({Key? key}) : super(key: key);

  @override
  _nefictionState createState() => _nefictionState();
}

class _nefictionState extends State<nefiction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    // alignment: Alignment.center,
                    //margin: EdgeInsets.all(20),
                    height: 50,
                    width: 300,
                    color: Colors.deepPurpleAccent,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Center(
                              child: Text(
                            " الاشعارات ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.notifications_active,
                            size: 30,
                            color: Colors.white,
                          ),
                        ]),
                  )),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black54,
                  child: Container(
                    height: 200,
                    width: 350,
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,children: [
                                  Text(("مصطفى علي ضياء  "),
                                      style: new TextStyle(
                                        fontSize: 18,
                                        // fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text("برمجه_المرحله الثانيه  ",
                                      style: new TextStyle(
                                        fontSize: 12,
                                        // fontFamily: 'Roboto',
                                        color: Colors.black,
                                        //fontWeight: FontWeight.bold,
                                      ))
                                ]),
                                Icon(
                                  Icons.notifications_active,
                                  size: 40,
                                  color: Colors.deepPurple,
                                ),
                              ]),
                          Row(children: [
                            new Text("2021-08-15-9:30",
                                textAlign: TextAlign.center,
                                // overflow: TextOverflow.ellipsis,
                                style: new TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                )),
                            Expanded(
                                child: Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                          ]),
                              Text("Hi ,Iam Mr.Shaheen Pribo.I tried to connect Mrs.beka ,but it showe me a"
                                  "mistak.In any case , I will, send you the ",
                                  textAlign: TextAlign.center,
                                  // overflow: TextOverflow.ellipsis,
                                  style: new TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    color: Colors.black87,
                                    //fontWeight: FontWeight.bold,
                                  )),
                        ])),
                  ),
                ),
              )
            ]),
      ), ElevatedButton(
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
