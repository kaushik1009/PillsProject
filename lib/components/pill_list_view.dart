import 'package:flutter/material.dart';
import 'package:pillsproject/constants.dart';

class PillList extends StatefulWidget {
  const PillList({super.key, required this.data});
  final List<dynamic> data;

  @override
  PillListState createState() {
    return PillListState();
  }
}

class PillListState extends State<PillList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: widget.data.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            leading: Image.asset(
              Constants.pillsListTileImagePath,
              height: 35,
              width: 35,
            ),
            trailing: Text(widget.data[index][4]),
            title: Text(widget.data[index][1]),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${widget.data[index][3]} - ${widget.data[index][2]}'),
              ],
            ),
            tileColor: const Color.fromARGB(255, 210, 205, 213),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
