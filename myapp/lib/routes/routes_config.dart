import 'package:flutter/material.dart';
import 'package:myapp/data/data.dart';

import 'routes.dart';

class RoutesConfig {
  static void goToContactDetails(
    BuildContext context, {
    required ModelContact contact,
  }) {
    final routeName =
        RoutesNames.contactDetails + Uri.encodeComponent(contact.email);
    Navigator.of(context).pushNamed(routeName, arguments: contact);
  }

  static void goToNotification(BuildContext context) {
    Navigator.of(context).pushNamed(RoutesNames.notifications);
  }

  static void goToProfile(BuildContext context) {
    Navigator.of(context).pushNamed(RoutesNames.profile);
  }
}
