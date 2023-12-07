import 'package:flutter/material.dart';

import '../widgets/grid_item.dart';
import '../widgets/horizontal_list_item.dart';
import '../widgets/page_view_item.dart';
import '../widgets/vertical_list_item.dart';

class Tab1Page extends StatelessWidget {
  final _pageViewItems = [
    PageViewItem(assetName: 'banner1.jpg'),
    PageViewItem(assetName: 'banner2.jpg'),
    PageViewItem(assetName: 'banner3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: PageController(
                  viewportFraction: 0.90,
                  initialPage: 999,
                ),
                itemBuilder: (context, index) {
                  return _pageViewItems[index % _pageViewItems.length];
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              color: Colors.deepOrange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'グリッド',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                GridItem(title: 'タイトル１'),
                GridItem(title: 'タイトル２'),
                GridItem(title: 'タイトル３'),
                GridItem(title: 'タイトル４'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              color: Colors.deepOrange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '横リスト',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  HorizontalListItem(title: 'タイトル５'),
                  HorizontalListItem(title: 'タイトル６'),
                  HorizontalListItem(title: 'タイトル７'),
                  HorizontalListItem(title: 'タイトル８'),
                  HorizontalListItem(title: 'タイトル９'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              color: Colors.deepOrange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '縦リスト',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                VerticalListItem(title: 'タイトル１０'),
                VerticalListItem(title: 'タイトル１１'),
                VerticalListItem(title: 'タイトル１２'),
                VerticalListItem(title: 'タイトル１３'),
              ],
            ),
          ]),
    );
  }
}
