import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MainCard extends StatefulWidget {
  final void Function(String name) parentAction;
  const MainCard({Key key, this.name, this.date, this.parentAction}) : super(key: key);

  final name;

  final date;

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (BuildContext context) {
              widget.parentAction(widget.name);
            },
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
        elevation: 4.0,
        // color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            ListTile(
              title: Text("Workplace: " + widget.name),
              subtitle: Text("Booked at " + widget.date + ", 8:00 - 18:00"),
            ),
          ],
        ),
      )
    );
  }
}

