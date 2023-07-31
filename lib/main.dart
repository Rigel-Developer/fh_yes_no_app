import 'package:fh_yes_no_app/config/themes/app_theme.dart';
import 'package:fh_yes_no_app/presentation/screens/chat/chat.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: AppTheme(colorIndex: 0).theme(),
      home: ChatScreen(),
    );
  }
}
