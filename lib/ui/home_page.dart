import 'package:flutter/material.dart';
import 'package:pillsproject/constants.dart';
import '../components/empty_state.dart';
import '../components/pill_list_view.dart';
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
          if (result != null) {
            if (result[0][0]) {
              setState(() {
                _isShow = false;
                entries.add(result[0]);
              });
            }
          }
        },
        tooltip: Constants.toolTipText,
        child: const Icon(Icons.add),
      ),
    );
  }
}
