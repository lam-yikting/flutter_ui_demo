import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});
  @override
  State<CheckBoxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
          value: isChecked, 
          onChanged: (bool? value){
            setState(() {
              isChecked = value;
            });
          },
        );
  }
}
