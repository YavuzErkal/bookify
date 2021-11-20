import 'package:bookify/widgets/lampe.dart';
import 'package:bookify/widgets/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<MainCard> mainCards = List.generate(5, (index) => MainCard());

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ListView.builder(
                itemCount: mainCards.length,
                itemBuilder: (BuildContext context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    onDismissed: (_){
                      setState(() {
                        mainCards.removeAt(index);
                      });
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: ListTile(
                        title: Text("Raum: O2-R5-P3"),
                        subtitle: Text("Gebucht am: 21.11.2021"),
                        trailing: Icon(Icons.arrow_back),
                      ),
                    ),
                    background: Container(
                      color: Colors.red,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  );
                }
            )
          ],
        )

    );
  }
}

void doNothing(BuildContext context) {}