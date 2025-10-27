import 'package:ezwage/ui/notifications/controller/notification_provider.dart';
import 'package:ezwage/ui/notifications/view/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void navigateToNotificationScreen(BuildContext context) {
  // Navigator.pop(context);
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider<NotificationProvider>(
          create: (_) => NotificationProvider(),
          child: NotificationsScreen())));
}
