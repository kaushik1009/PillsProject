import 'package:flutter/material.dart';
import 'package:pillsproject/constants.dart';

// Create a Form widget.
class PillDescriptionForm extends StatefulWidget {
  @override
  PillDescriptionFormState createState() {
    return PillDescriptionFormState();
  }
}

class PillDescriptionFormState extends State<PillDescriptionForm> {
  final _pillNameController = TextEditingController();
  final _pillQuantityController = TextEditingController();
  final _reasonController = TextEditingController();
  final _timeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool? _sundayCheck = false;
  bool? _mondayCheck = false;
  bool? _tuesdayCheck = false;
  bool? _wednesdayCheck = false;
  bool? _thursdayCheck = false;
  bool? _fridayCheck = false;
  bool? _saturdayCheck = false;
  bool? _unCheckAll = false;
  bool _isSwitched = false;
  List<String> days = [];

  @override
  void dispose() {
    _pillNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _pillNameController,
            decoration: const InputDecoration(
              icon: Icon(Icons.medication),
              hintText: 'Enter the tablet name',
              labelText: 'Name',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter correct pill name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _pillQuantityController,
            decoration: const InputDecoration(
              icon: Icon(Icons.production_quantity_limits),
              hintText: 'Enter the number of tablets to be taken',
              labelText: 'Quantity',
            ),
            validator: (value) {
              if (!(value!.contains(RegExp(r'\d')))) {
                return 'Please enter a valid quantity';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _reasonController,
            decoration: const InputDecoration(
              icon: Icon(Icons.description),
              hintText: 'Enter reason for medication',
              labelText: 'Reason',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter valid reason';
              }
              return null;
            },
          ),
          Padding(
              padding: const EdgeInsets.all(1.0),
              child: Stack(children: [
                TextFormField(
                  controller: _timeController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.timelapse),
                    hintText: 'Enter the time as HH:MM',
                    labelText: 'Time',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid time';
                    }
                    return null;
                  },
                ),
                Positioned(
                  top: 20,
                  right: 60,
                  child: Text(
                    Constants.timeSwitchText,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
                Positioned(
                  top: 4,
                  right: 0,
                  child: Switch(
                    value: _isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        _isSwitched = value;
                        if (_isSwitched == true) {
                          Constants.timeSwitchText = 'PM';
                        } else {
                          Constants.timeSwitchText = 'AM';
                        }
                      });
                    },
                  ),
                ),
              ])),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: CheckboxListTile(
                    value: _sundayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _sundayCheck = value;
                      });
                    },
                    title: const Text("Sunday"),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: CheckboxListTile(
                    value: _mondayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _mondayCheck = value;
                      });
                    },
                    title: const Text("Monday"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: _tuesdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _tuesdayCheck = value;
                      });
                    },
                    title: const Text("Tuesday"),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: _wednesdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _wednesdayCheck = value;
                      });
                    },
                    title: const Text("Wednesday"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: _thursdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _thursdayCheck = value;
                      });
                    },
                    title: const Text("Thursday"),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: _fridayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _fridayCheck = value;
                      });
                    },
                    title: const Text("Friday"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: _saturdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _saturdayCheck = value;
                      });
                    },
                    title: const Text("Saturday"),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: _unCheckAll,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        _unCheckAll = value;
                        if (_unCheckAll == true) {
                          Constants.selectAllCheckboxText = 'Unselect all';
                          _sundayCheck = true;
                          _mondayCheck = true;
                          _tuesdayCheck = true;
                          _wednesdayCheck = true;
                          _thursdayCheck = true;
                          _fridayCheck = true;
                          _saturdayCheck = true;
                        } else {
                          Constants.selectAllCheckboxText = 'Select all';
                          _sundayCheck = false;
                          _mondayCheck = false;
                          _tuesdayCheck = false;
                          _wednesdayCheck = false;
                          _thursdayCheck = false;
                          _fridayCheck = false;
                          _saturdayCheck = false;
                        }
                      });
                    },
                    title: Text(Constants.selectAllCheckboxText),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 150.0, top: 20.0),
            child: ElevatedButton(
                child: const Text('Done'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (_sundayCheck == true) {
                      days.add('Sun');
                    }
                    List<dynamic> formValues = [
                      [
                        true,
                        _pillNameController.value.text,
                        _pillQuantityController.value.text,
                        _reasonController.value.text,
                        '${_timeController.value.text} ${Constants.timeSwitchText}',
                        days
                      ]
                    ];
                    Navigator.pop(
                      context,
                      formValues,
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
