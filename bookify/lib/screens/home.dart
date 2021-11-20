import 'package:bookify/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            MainCard(),
            MainCard(),
            MainCard(),
            MainCard(),
            MainCard(),
            MainCard()
          ],
        )
    );
  }
}

void doNothing(BuildContext context) {}