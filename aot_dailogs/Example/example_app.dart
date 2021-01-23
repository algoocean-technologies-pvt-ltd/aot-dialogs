
import 'package:aot_dailogs/aot_dailogs.dart';
import 'package:aot_dailogs/images.dart';
import 'package:flutter/material.dart';
class DialogBoxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DialogBoxDemoState();
  }
}

class DialogBoxDemoState extends State<DialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("AOT-Dialog Box"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Click',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 160.0,
                  fontFamily: 'Roboto',
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      AOTDialogs.okDialog(
                          context, 'Success', CustomImages.checkImage);
                    },
                    child: new Text("Confirm Dialog"),
                  ),
                  new RaisedButton(
                    onPressed: () {
                      AOTDialogs.okDialog(
                          context, 'Success', CustomImages.crossImage);
                    },
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Okay Dialog",
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}