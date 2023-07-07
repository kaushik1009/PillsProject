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
              hintText: Constants.tabletNameHintText,
              labelText: Constants.tabletNameLabelText,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return Constants.tabletNameValidationText;
              }
              return null;
            },
          ),
          TextFormField(
            controller: _pillQuantityController,
            decoration: const InputDecoration(
              icon: Icon(Icons.production_quantity_limits),
              hintText: Constants.tabletQuantityHintText,
              labelText: Constants.tabletQuantityLabelText,
            ),
            validator: (value) {
              if (!(value!.contains(RegExp(r'\d')))) {
                return Constants.tabletQuantityValidationText;
              }
              return null;
            },
          ),
          TextFormField(
            controller: _reasonController,
            decoration: const InputDecoration(
              icon: Icon(Icons.description),
              hintText: Constants.tabletReasonHintText,
              labelText: Constants.tabletReasonLabelText,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return Constants.tabletReasonValidationText;
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
                    hintText: Constants.tabletTimingsHintText,
                    labelText: Constants.tabletTimingsLabelText,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return Constants.tabletTimingsValidationText;
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
                    value: Constants.isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        Constants.isSwitched = value;
                        if (Constants.isSwitched == true) {
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
                    value: Constants.sundayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.sundayCheck = value;
                      });
                    },
                    title: const Text(Constants.sunday),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: CheckboxListTile(
                    value: Constants.mondayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.mondayCheck = value;
                      });
                    },
                    title: const Text(Constants.monday),
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
                    value: Constants.tuesdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.tuesdayCheck = value;
                      });
                    },
                    title: const Text(Constants.tuesday),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: Constants.wednesdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.wednesdayCheck = value;
                      });
                    },
                    title: const Text(Constants.wednesday),
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
                    value: Constants.thursdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.thursdayCheck = value;
                      });
                    },
                    title: const Text(Constants.thursday),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: Constants.fridayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.fridayCheck = value;
                      });
                    },
                    title: const Text(Constants.friday),
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
                    value: Constants.saturdayCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.saturdayCheck = value;
                      });
                    },
                    title: const Text(Constants.saturday),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CheckboxListTile(
                    value: Constants.unCheckAll,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        Constants.unCheckAll = value;
                        if (Constants.unCheckAll == true) {
                          Constants.selectAllCheckboxText = 'Unselect all';
                          Constants.sundayCheck = true;
                          Constants.mondayCheck = true;
                          Constants.tuesdayCheck = true;
                          Constants.wednesdayCheck = true;
                          Constants.thursdayCheck = true;
                          Constants.fridayCheck = true;
                          Constants.saturdayCheck = true;
                        } else {
                          Constants.selectAllCheckboxText = 'Select all';
                          Constants.sundayCheck = false;
                          Constants.mondayCheck = false;
                          Constants.tuesdayCheck = false;
                          Constants.wednesdayCheck = false;
                          Constants.thursdayCheck = false;
                          Constants.fridayCheck = false;
                          Constants.saturdayCheck = false;
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
                child: const Text(Constants.submitButtonTitle),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    List<dynamic> formValues = [
                      [
                        true,
                        _pillNameController.value.text,
                        _pillQuantityController.value.text,
                        _reasonController.value.text,
                        '${_timeController.value.text} ${Constants.timeSwitchText}',
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
