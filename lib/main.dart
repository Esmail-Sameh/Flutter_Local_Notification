import 'package:flutter/material.dart';
import 'package:local_notifications/screens/home_screen.dart';

import 'notification_serves/local_notifacations_serves.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotifacationsServes.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
