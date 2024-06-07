import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotifacationsServes {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void Function(NotificationResponse notificationResponse)? onTap;

  // static void Function(NotificationResponse)? onTap;

  static Future init() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveBackgroundNotificationResponse: onTap,
      onDidReceiveNotificationResponse: onTap,
    );
  }

  static void showBasicNotification({ required String title , required String body}) async {
    NotificationDetails? details = const NotificationDetails(
      android: AndroidNotificationDetails('id 1', 'name 1', importance: Importance.max , priority: Priority.high),
      iOS: DarwinNotificationDetails(),
    );
    await flutterLocalNotificationsPlugin.show(0, title, body, details);
  }
}
