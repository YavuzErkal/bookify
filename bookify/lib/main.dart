import 'package:bookify/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

Future<Null> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  var cameras /*= await availableCameras()*/;


  runApp(MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key key, this.cameras}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClickBookGo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is teriahe theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
        //primaryColor: Colors.blueGrey.shade500,
        //primaryColorLight: Colors.blueGrey.shade400,
      ),
      home: Login(cameras: cameras,),
    );
  }
}

