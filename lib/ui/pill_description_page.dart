import 'package:flutter/material.dart';
import 'package:pillsproject/constants.dart';
import '../components/pill_description_form.dart';

class PillDescription extends StatelessWidget {
  const PillDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.pillDescriptionPageTitle),
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
