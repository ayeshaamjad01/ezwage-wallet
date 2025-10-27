import 'dart:io';
import 'package:ezwage/ui/home/model/notification_timer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseConfiguration {
  static const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails('your channel id', 'your channel name',
          channelDescription: 'your channel description',
          importance: Importance.max,
          priority: Priority.high,
          icon: 'app_icon',
          ticker: 'ticker');
  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    importance: Importance.max,
  );
  static const DarwinNotificationDetails iOSPlatformChannelSpecifics =
      DarwinNotificationDetails(threadIdentifier: 'thread_id');
  static const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails, iOS: iOSPlatformChannelSpecifics);
  static final FlutterLocalNotificationsPlugin
      flutterLocalNotificationsPluginFireBase =
      FlutterLocalNotificationsPlugin();
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
  }

  static assignFirebaseKey() async {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Platform.isIOS
                ? 'AIzaSyCKbeNnh0tDuhRXy6LAzKBGiAvJcecWxH8'
                : 'AIzaSyAL_KmWPLsinnm0I_wdsKAHz5EZOZMbWT4',
            appId: Platform.isIOS
                ? '1:59063050662:ios:19451877fd8c548269af67'
                : '1:59063050662:android:1ea7a9110b039a2269af67',
            messagingSenderId: '59063050662',
            projectId: 'ezwage-ios'));
  }

  static initalizeFirebase() async {
    if (Platform.isAndroid)
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()!;
          // .requestPermission();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await flutterLocalNotificationsPluginFireBase
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    await flutterLocalNotificationsPluginFireBase
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  static firbaseInitState() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
            // onDidReceiveLocalNotification: onDidReceiveLocalNotification()
        );
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse());
    FirebaseMessaging.onMessage.listen((RemoteMessage messsage) {
      receivedNotificationFromFirebase = true;
      RemoteNotification? notification = messsage.notification;
      AndroidNotification? android = messsage.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                androidNotificationDetails.channelId,
                androidNotificationDetails.channelName,
                playSound: true,
                icon: 'app_icon',
              ),
            ));
      } else if (notification != null && Platform.isIOS == true) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            const NotificationDetails(
              iOS: DarwinNotificationDetails(
                presentAlert: true,
                presentBadge: true,
                presentSound: true,
              ),
            ));
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
  }

  static onDidReceiveLocalNotification() {}

  static onDidReceiveNotificationResponse() {}
}
