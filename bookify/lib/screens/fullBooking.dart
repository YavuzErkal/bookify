import 'package:flutter/material.dart';

class FullBooking extends StatefulWidget{
  const FullBooking({Key key, this.name}) : super(key: key);

  final name;

  @override
  _FullBookingState createState() => _FullBookingState();
}

class _FullBookingState extends State<FullBooking>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClickBookGo"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(  //Name Row
                margin: const EdgeInsets.only(top: 32),
                //place id Heading+enter field container
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                        child: Text(
                          "Booking",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Place ID',
                            hintText: 'Enter your place ID'),
                      ),
                    ),

                    Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Starting Time',
                                hintText: 'Enter your desired starting time'),
                          ),
                        ),
                        ),
                        /*Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:0,right: 0,top:15,bottom: 0),
                            child: Text(
                                  "-"
                              ),
                            ),
                          ),*/
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Ending Time',
                                  hintText: 'Enter your desired ending time'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ],
                )
            ),
            //Place ID
          ],
        )
      ),
    );
  }
}