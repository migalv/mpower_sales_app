import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String message;
  final Object exception;
  final int code;

  const ErrorDialog({
    Key key,
    @required this.message,
    this.exception,
    this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("An error occurred"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
          ),
          const SizedBox(height: 8.0),
          Text(
            "Exception: $exception",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(height: 8.0),
          Text(
            "Error Code: $code",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
      actions: [
        RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Dismiss"),
        )
      ],
    );
  }
}
