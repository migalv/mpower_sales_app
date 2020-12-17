import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class SoftwareTeamContactInfo extends StatelessWidget {
  final String contactPhone = "+34 628 86 21 81";
  final String whatsAppLink =
      "https://chat.whatsapp.com/LeSAIWjqXWfGNJk2jnqV2T";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            const Text("You can call this number: "),
            GestureDetector(
              onTap: () async {
                final String phone = 'tel:$contactPhone';
                if (await url_launcher.canLaunch(phone)) {
                  url_launcher.launch(phone);
                }
              },
              child: Text(
                contactPhone,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            const Text("or send a WhatsApp message to "),
            GestureDetector(
              onTap: () async {
                if (await url_launcher.canLaunch(whatsAppLink)) {
                  url_launcher.launch(whatsAppLink);
                }
              },
              child: Text(
                "this group",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
