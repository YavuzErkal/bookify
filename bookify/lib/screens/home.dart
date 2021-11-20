import 'package:bookify/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> names = ["O2-R5-P1", "O2-R5-P1", "O2-R5-P3", "O1-R2-P3", "O2-R5-P3"];
  List<String> dates = ["21.11.2021", "22.11.2021", "24.11.2021", "27.11.2021", "30.11.2021"];


  void deleteElement(String name) {
    setState(() {
      var index = names.indexOf(name);
      names.remove(name);
      dates.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return MainCard(
              name: names[index],
              date: dates[index],
              parentAction: deleteElement,
            );
          },
        )
    );
  }
}

void doNothing(BuildContext context) {}