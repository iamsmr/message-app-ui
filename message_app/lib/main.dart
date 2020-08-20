import 'package:flutter/material.dart';
import 'package:message_app/screens/chat_room.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatRoom()
    );
  }
}
