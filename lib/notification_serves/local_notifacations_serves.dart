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
      //  android: AndroidInitializationSettings('appicon'),
      //C:\Users\Esmail\StudioProjects\local_notifications\android\app\src\main\res\drawable\app_icon.png
      iOS: DarwinInitializationSettings(),
    );
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveBackgroundNotificationResponse: onTap,
      onDidReceiveNotificationResponse: onTap,
    );
  }

  static void showBasicNotification(
      {required String title, required String body}) async {
    NotificationDetails? details = const NotificationDetails(
      android: AndroidNotificationDetails('id 1', 'name 1',
          importance: Importance.max, priority: Priority.high, playSound: true),
      iOS: DarwinNotificationDetails(),
    );
    await flutterLocalNotificationsPlugin.show(0, title, body, details);
  }

  static void showRepeatedNotification(
      {
      required String title, required String body,}) async{
    NotificationDetails? details = const NotificationDetails(
        android: AndroidNotificationDetails('id 2', 'name 2' , importance: Importance.max , priority: Priority.high),
        iOS: DarwinNotificationDetails());
    await flutterLocalNotificationsPlugin.periodicallyShow(
      2,
      title,
      body,
      RepeatInterval.everyMinute,
      details,
    );
  }

  static void canselNotification()async{
    await flutterLocalNotificationsPlugin.cancel(2);
  }
}
