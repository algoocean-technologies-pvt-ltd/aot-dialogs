# aot_dailogs
 A flutter package that provides commonly used dialog boxes

# usage
 [Example] (https://github.com/algoocean-technologies-pvt-ltd/aot-dialogs/blob/main/aot_dailogs/Example/example_app.dart)

 To use this package : *add the dependency to your [pubspec.yaml] file.
 
 ```yaml
    dependencies:
        flutter:
            sdk: flutter
        aot_dailogs:
```

## Add to your dart file

```dart

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

```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
