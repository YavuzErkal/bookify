import 'package:bookify/screens/fullBooking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Map extends StatefulWidget {
  const Map({Key key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {

  var tabel_size = 0.05;
  var between_row_size = 0.05;

  var inter_row_size = 0.05;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height*0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Grundriss.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.29,
                  ),
                  Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.07,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P1")));}, child: Text("P1")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P2")));}, child: Text("P2")),

                      Container(width: MediaQuery.of(context).size.width * 0.265,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P4")));}, child: Text("P1")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P5")));}, child: Text("P2")),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.07,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P6")));}, child: Text("P1")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P7")));}, child: Text("P2")),

                      Container(width: MediaQuery.of(context).size.width * 0.265,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P8")));}, child: Text("P1")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P9")));}, child: Text("P2")),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.042,
                  ),
                  Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.61,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P10")));}, child: Text("P1")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P11")));}, child: Text("P2")),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.61,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P12")));}, child: Text("P1")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "P13")));}, child: Text("P2")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
