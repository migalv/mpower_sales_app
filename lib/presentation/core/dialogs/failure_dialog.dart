import 'package:flutter/material.dart';
import 'package:sales_app/presentation/core/failure_widgets/default_failure_widget.dart';

/// Used to show that a failure ocurred
///
/// It uses the DefaultFailureWidget as the default content
class FailureDialog extends StatelessWidget {
  final String title;
  final List<String> messages;
  final Icon icon;

  const FailureDialog({
    Key key,

    /// List of messages to show on the Failure dialog's body
    @required this.messages,
    this.title = "An error ocurred",
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: DefaultFailureWidget(
        messages: messages,
        icon: icon,
      ),
      actions: [
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Dismiss"),
        )
      ],
    );
  }
}
