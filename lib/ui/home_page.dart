import 'package:flutter/material.dart';
import 'pill_description_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isShow = true;
  List<dynamic> entries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: _isShow == true
          ? EmptyUI()
          : PillList(
              data: entries,
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PillDescription()),
          );
          if (result[0][0]) {
            setState(() {
              _isShow = false;
              entries.add(result[0]);
            });
          }
        },
        tooltip: 'Add Pill',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class EmptyUI extends StatefulWidget {
  @override
  EmptyUIState createState() {
    return EmptyUIState();
  }
}

class EmptyUIState extends State<EmptyUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/empty_state.png'),
              const Padding(padding: EdgeInsets.all(10.0)),
              const Text('Oh huh.. there are no pills added',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
              const Padding(padding: EdgeInsets.all(2.0)),
              const Text('Add items to get Started',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                      letterSpacing: 2.0)),
            ],
          ),
        ),
      ),
    );
  }
}

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
              'assets/pill.png',
              height: 35,
              width: 35,
            ),
            trailing: Text(widget.data[index][4]),
            title: Text(widget.data[index][1]),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${widget.data[index][3]} - ${widget.data[index][2]}'),
                Text(widget.data[index][5][0]),
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
