import 'package:flutter/material.dart';

import 'tab1_page.dart';
import 'tab2_page.dart';

class TabPage extends StatelessWidget {
  final TabController tabController;
  TabPage({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          height: 60,
          child: TabBar(
            tabs: [
              SizedBox(
                child: Text(
                  'タブ１',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                child: Text(
                  'タブ２',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                child: Text(
                  'タブ３',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
            unselectedLabelColor: const Color(0xffacb3bf),
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            indicatorPadding: EdgeInsets.all(2),
            isScrollable: false,
            controller: tabController,
          ),
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: <Widget>[
            Tab1Page(),
            Tab2Page(),
            Placeholder(),
          ]),
        ),
      ],
    );
  }
}
