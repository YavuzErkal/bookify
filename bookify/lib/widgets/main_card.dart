import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MainCard extends StatefulWidget {
  const MainCard({Key key}) : super(key: key);

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {

  String name;
  TimeOfDay time;


  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          )
        ],
      ),
      child: Card(
        elevation: 4.0,
        // color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            ListTile(
              title: Text("Raum: O2-R5-P3"),
              subtitle: Text("Gebucht am 10.11.21 von: 8:00 - 18:00"),
            ),
          ],
        ),
      )
    );
  }
}

void doNothing(BuildContext context) {



}