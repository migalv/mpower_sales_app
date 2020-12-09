import 'package:flutter/material.dart';

class CustomerCircleAvatar extends StatelessWidget {
  final String initials;

  const CustomerCircleAvatar({Key key, this.initials = "N/A"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black12,
      child: Text(
        initials,
        style: const TextStyle(color: Colors.black87),
      ),
    );
  }
}
