import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/ui_demo_app.dart';
import 'package:provider/provider.dart';

class ChangeNotifierText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("ChangeNotifierText built");
    final state = Provider.of<DemoChangeNotifierModel>(context);
    return Text('ChangeNotifierによるState変更: ${state.value}');
  }
}