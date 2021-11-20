import 'package:flutter/material.dart';

class MainCard extends StatefulWidget {
  const MainCard({Key key}) : super(key: key);

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      //color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          ListTile(
            title: Text("Raum: O2-R5-P3"),
            subtitle: Text("Gebucht von: 8:00 - 18:00"),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text("Infos")
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("Auschecken")
              ),
            ],
          )
        ],
      ),
    );
  }
}
