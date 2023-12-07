import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final String title;
  const HorizontalListItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Material(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('$titleをタップしました')));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                AspectRatio(aspectRatio: 1.0, child: Placeholder()),
                Expanded(
                    child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8.0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
