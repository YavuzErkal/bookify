import 'package:bookify/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Home extends StatefulWidget {
  const Home({Key key, this.controller}) : super(key: key);
  final HomePageController controller;


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {




  @override
  void initState() {
    super.initState();
    widget.controller.addElement = addElement;
  }

  void addElement(String name, String date, String startTime, String endTime) {
    setState(() {
      widget.controller.names.add(name);
      widget.controller.dates.add(date);
    });
  }


  void deleteElement(String name) {
    setState(() {
      var index = widget.controller.names.indexOf(name);
      widget.controller.names.remove(name);
      widget.controller.dates.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Hello John!", style: const TextStyle(fontSize: 20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Utilization today',
                      //style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  LinearProgressIndicator(
                    value: 0.3,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    semanticsLabel: 'Linear progress indicator',
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: widget.controller.names.length,
                  itemBuilder: (context, index) {
                    return MainCard(
                      name: widget.controller.names[index],
                      date: widget.controller.dates[index],
                      parentAction: deleteElement,
                    );
                  },
                )
            ),

          ],
        )
    );
  }
}

class HomePageController {

  List<String> names = ["O2-R5-P1", "O2-R5-P1", "O2-R5-P3", "O1-R2-P3", "O2-R5-P3"];
  List<String> dates = ["21.11.2021", "22.11.2021", "24.11.2021", "27.11.2021", "30.11.2021"];

  void Function(String, String, String, String) addElement;

  void addElementd(String name, String date, String startTime, String endTime) {
    names.add(name);
    dates.add(date);
  }
}

void doNothing(BuildContext context) {}