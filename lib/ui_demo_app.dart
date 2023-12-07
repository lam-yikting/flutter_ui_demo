import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/main_page.dart';

class UiDemoApp extends StatelessWidget {
  const UiDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        DemoChangeNotifierProvider()
      ],
      child: MaterialApp(
        title: 'Flutter UI Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        home: MainPage(),
      ),
    );
  }
}

class DemoChangeNotifierModel extends ChangeNotifier {
  String value = "0";
  void setValue(String value) {
    this.value = value;
    notifyListeners();
  }
}

class DemoChangeNotifierProvider extends ChangeNotifierProvider<DemoChangeNotifierModel> {
  DemoChangeNotifierProvider() : super(create: (_) => DemoChangeNotifierModel());
}
