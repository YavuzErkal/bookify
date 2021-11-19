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
      child: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/plan.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text("Test")
          ],
        ),
      )
    );
  }
}
