import 'package:flutter/material.dart';

import 'layout.dart';

class FullBooking extends StatefulWidget{
  const FullBooking({Key key, this.name}) : super(key: key);

  final name;

  @override
  _FullBookingState createState() => _FullBookingState();
}

class _FullBookingState extends State<FullBooking>{

  var txt = TextEditingController();
  var txt2 = TextEditingController();
  var txt3 = TextEditingController();
  var txt4 = TextEditingController();

  @override
  void initState() {
    super.initState();

    txt.text = widget.name;
    txt2.text = TimeOfDay.now().hour.toString() + ":" + TimeOfDay.now().minute.toString();
    //txt2.text = "8:00";
    txt3.text = "17:00";
    txt4.text = "21.11.2021";
  }

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
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:5,bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: txt,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Place ID',
                            //hintText: 'Enter your place ID'
                            ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            //Symbol one
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  //container for logo
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                        Icons.desktop_windows,
                                      ),
                                    ),
                              ),
                            ),
                          ),
                          Expanded(
                            //Symbol one
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  //container for logo
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            //Symbol one
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  //container for logo
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.power,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            //Symbol one
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  //container for logo
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.outdoor_grill_rounded,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            //Symbol one
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  //container for logo
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.cake,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:15.0,right: 15.0,top:35,bottom: 0),
                        child: Text(
                          "Time Details",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: txt4,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Date',
                            hintText: 'Enter your booking date'),
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
                            onTap: () async {
                              var date = await showTimePicker(context: context,initialTime: TimeOfDay.now(),);
                              setState(() {
                                txt2.text = date.hour.toString() + ":" + date.minute.toString();
                              });
                            },
                            controller: txt2,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Starting Time',
                                hintText: 'Enter your starting time'),
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
                              onTap: () async {
                                var date = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                                setState(() {
                                  txt3.text = date.hour.toString() + ":" + date.minute.toString();
                                });
                              },
                              controller: txt3,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Ending Time',
                                  hintText: 'Enter your ending time'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 35, bottom: 15),
              child:Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 50,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500))),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Booking successfull')));
                    Navigator.pop(
                        context, MaterialPageRoute(builder: (_) => Layout()));
                  },
                  child: Text(
                    'ClickBookGo!',
                    style: TextStyle( fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}