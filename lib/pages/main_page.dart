import 'package:flutter/material.dart';

import 'tab_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  var _lights = false;

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('UIデモアプリ'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'ボタン１',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('ヘッダーボタン１')));
              },
            ),
            VerticalDivider(),
            IconButton(
              icon: const Icon(Icons.add_call),
              tooltip: 'ボタン２',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('ヘッダーボタン２')));
              },
            ),
            VerticalDivider(),
            IconButton(
              icon: const Icon(Icons.add_circle),
              tooltip: 'ボタン３',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('ヘッダーボタン３')));
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 120,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                  ),
                  child: Text(
                    'ドロワーメニュー',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(vertical: -4),
                title: Text(
                  'カテゴリ１',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                tileColor: Colors.black,
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('アラートダイアログ１'),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text('アラートダイアログ１'),
                      content: Text('キャンセルできるダイアログ'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('アラートダイアログ２'),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) => PopScope(
                      canPop: false,
                      child: AlertDialog(
                        title: Text('アラートダイアログ２'),
                        content: Text('キャンセルできないダイアログ'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                visualDensity: VisualDensity(vertical: -4),
                title: Text(
                  'カテゴリ２',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                tileColor: Colors.black,
              ),
              SwitchListTile(
                title: const Text('トグル'),
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
                secondary: const Icon(Icons.lightbulb_outline),
              ),
            ],
          ),
        ),
        body: Row(
          children: [
            // Expanded(
            //   child: Navigator(
            //     key: const ValueKey('nestedNavigator'),
            //     onGenerateRoute: (settings) {
            //       return MaterialPageRoute(
            //         builder: (context) => TabPage(
            //           tabController: _tabController,
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: TabPage(
                  tabController: _tabController,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
