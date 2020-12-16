import 'package:flutter/material.dart';

class AppBarLoadingIndicator extends StatelessWidget {
  /// Circular Progress indicator used when AppBar buttons are loading
  const AppBarLoadingIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          Colors.white,
        ),
      ),
    );
  }
}
