import 'package:flutter/material.dart';
import '../utils/pill_description_form.dart';

class PillDescription extends StatelessWidget {
  const PillDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pill Description'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PillDescriptionForm(),
          ],
        ),
      ),
    );
  }
}
