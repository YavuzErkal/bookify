import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  const Map({Key key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage("assets/images/plan.jpeg"),

              ),
            ),
          ),
          Text("Test")
        ],
      )
    );
  }
}
