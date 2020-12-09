import 'package:flutter/material.dart';
import 'package:sales_app/presentation/themes/colors.dart';

/// Card that contains a tip that explains something in the app
class TipCard extends StatelessWidget {
  final String tip;

  const TipCard({Key key, @required this.tip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      color: tipCardBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.info,
                  color: Colors.black54,
                ),
                SizedBox(width: 16.0),
                Text("Tip!"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                tip,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
