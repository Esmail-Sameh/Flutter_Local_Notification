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
            myButton(title: 'Basic Notification', isCansel: false ,onTap: (){
              LocalNotifacationsServes.showBasicNotification( title: 'Basic Notification' ,  body: 'I need to go to gym'  );
            }),
            SizedBox(height: 10,),
            myButton(title: 'Repeated Notification',isCansel: false,  onTap: (){
              LocalNotifacationsServes.showRepeatedNotification( title: 'Repeated Notification' ,  body: 'I need to go to gym'  );
            }),
            SizedBox(height: 30,),
            myButton(title: 'Cansel Notification', isCansel: true, onTap: (){
              LocalNotifacationsServes.canselNotification();
            }),
          ],
        ),
      ),
    );
  }
// C:\Users\Esmail\StudioProjects\local_notifications\android\app\src\main\res\drawable\appicon.png
  Widget myButton({
    required String title,
    required void Function()? onTap,
    required bool isCansel,
})=>GestureDetector(
    onTap: onTap ,
    child: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isCansel ?Colors.red :Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(title , style: TextStyle(color: Colors.white, fontSize: 18 ),)),
    ),
  );
}
