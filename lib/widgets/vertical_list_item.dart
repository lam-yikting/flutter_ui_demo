import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {
  final String title;
  const VerticalListItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Material(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('$titleをタップしました')));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                AspectRatio(aspectRatio: 1.0, child: Placeholder()),
                Expanded(
                    child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 20),
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
