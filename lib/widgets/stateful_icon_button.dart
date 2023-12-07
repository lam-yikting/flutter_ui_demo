import 'package:flutter/material.dart';

class StatefulIconButton extends StatefulWidget {
  @override
  _StatefulIconButtonState createState() => _StatefulIconButtonState();
}

class _StatefulIconButtonState extends State<StatefulIconButton> {

  int _state = 0;

  @override
  Widget build(BuildContext context) {
    print("StatefulIconButton built");
    if (_state == 0) {
      return IconButton(onPressed: _onIconButtonPressed, icon: Icon(Icons.abc));
    } else {
      return IconButton(onPressed: _onIconButtonPressed, icon: Icon(Icons.numbers));
    }
  }

  void _onIconButtonPressed() {
    if (_state == 0) {
      setState(() {
        _state = 1;
      });
    } else {
      setState(() {
        _state = 0;
      });
    }
  }
}
