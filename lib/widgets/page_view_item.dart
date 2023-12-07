import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  final String assetName;
  const PageViewItem({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Image(image: AssetImage('assets/$assetName')),
    );
  }
}
