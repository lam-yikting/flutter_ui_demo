import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/pages/other_page.dart';
import 'package:flutter_ui_demo/ui_demo_app.dart';
import 'package:flutter_ui_demo/widgets/change_notifier_text.dart';
import 'package:flutter_ui_demo/widgets/stateful_icon_button.dart';
import 'package:provider/provider.dart';

import '../widgets/check_box_widget.dart';

class Tab2Page extends StatelessWidget {

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    print("Tab2Page built");
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtherPage()),
            );
          }, 
          child: Text(
            '画面遷移',
            style: TextStyle(color: Colors.white),
          )
        ),
        TextField(
          focusNode: focusNode,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
            hintText: '文字入力',
          ),
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
          ),
          onPressed: () {
            focusNode.requestFocus();
          }, 
          child: Text(
            '入力欄フォーカス',
            style: TextStyle(color: Colors.white),
          )
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
          ),
          onPressed: () {
            focusNode.unfocus();
          }, 
          child: Text(
            '入力欄フォーカス取り消し',
            style: TextStyle(color: Colors.white),
          )
        ),
        CheckBoxWidget(),
        StatefulIconButton(),
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () {
                Provider.of<DemoChangeNotifierModel>(context, listen: false).setValue("0");
              }, 
              child: Text('ChangeNotifier 0'),
            ),
            TextButton(
              onPressed: () {
                Provider.of<DemoChangeNotifierModel>(context, listen: false).setValue("1");
              }, 
              child: Text('ChangeNotifier 1'),
            ),
            
          ],
        ),
        ChangeNotifierText(),
      ],
    ));
  }
}
