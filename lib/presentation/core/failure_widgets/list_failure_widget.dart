import 'package:flutter/material.dart';
import 'package:sales_app/presentation/core/software_team_contact_info.dart';

/// This Widget is used when a failure occurs in a list
///
/// It will show an icon & a message to represent the ocurred failure
class ListFailureWidget extends StatelessWidget {
  final List<String> messages;
  final Widget icon;

  const ListFailureWidget({
    Key key,
    @required this.messages,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        constraints: BoxConstraints(maxHeight: screenHeight / 2),
        child: Column(
          children: [
            icon ?? Container(),
            const Text("An error has ocurred"),
            const SizedBox(height: 8.0),
            const Text("Please try again"),
            const SizedBox(height: 8.0),
            const Text(
              "If this error keeps happening please contact our software team",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            SoftwareTeamContactInfo(),
            const SizedBox(height: 8.0),
            ExpansionTile(
              title: const Text("More informations about this error here"),
              children: messages
                  .map(
                    (m) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 4.0,
                      ),
                      child: Text(
                        m,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
