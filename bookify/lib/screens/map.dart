import 'package:bookify/screens/fullBooking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Map extends StatefulWidget {
  const Map({Key key, this.parentAction}) : super(key: key);

  final void Function(String name, String date, String startTime, String endTimes) parentAction;

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
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P1", parentAction: widget.parentAction,)));}, child: Text("P1")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P2", parentAction: widget.parentAction,)));}, child: Text("P2")),

                      Container(width: MediaQuery.of(context).size.width * 0.265,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P3", parentAction: widget.parentAction,)));}, child: Text("P3")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P4", parentAction: widget.parentAction,)));}, child: Text("P4")),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.07,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P5", parentAction: widget.parentAction,)));}, child: Text("P5")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P6", parentAction: widget.parentAction,)));}, child: Text("P6")),

                      Container(width: MediaQuery.of(context).size.width * 0.265,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P7", parentAction: widget.parentAction,)));}, child: Text("P7")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P8", parentAction: widget.parentAction,)));}, child: Text("P8")),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.042,
                  ),
                  Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.61,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P9", parentAction: widget.parentAction,)));}, child: Text("P9")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P10", parentAction: widget.parentAction,)));}, child: Text("P10")),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.61,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P11", parentAction: widget.parentAction,)));}, child: Text("P11")),
                      Container(width: MediaQuery.of(context).size.width * 0.05,),
                      ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => FullBooking(name: "O2-R15-P12", parentAction: widget.parentAction,)));}, child: Text("P12")),
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
