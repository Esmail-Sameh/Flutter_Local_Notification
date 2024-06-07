import 'package:flutter/material.dart';
import 'package:local_notifications/notification_serves/local_notifacations_serves.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myButton(title: 'Basic Notification', onTap: (){
              LocalNotifacationsServes.showBasicNotification( title: 'الذهاب الى الجم' ,  body: ' تمرينه صدر و رجل وقفا و قرف و يلا بينا نخربها'  );
            }),
          ],
        ),
      ),
    );
  }

  Widget myButton({
    required String title,
    required void Function()? onTap,
})=>GestureDetector(
    onTap: onTap ,
    child: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(title , style: TextStyle(color: Colors.white, fontSize: 18 ),)),
    ),
  );
}
