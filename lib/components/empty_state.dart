import 'package:flutter/material.dart';
import 'package:pillsproject/constants.dart';

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
              Image.asset(Constants.emptyStateImagePath),
              const Padding(padding: EdgeInsets.all(10.0)),
              const Text(Constants.emptyStateTitleText,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
              const Padding(padding: EdgeInsets.all(2.0)),
              const Text(Constants.emptyStateSubTitleText,
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
