import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/config/theme/app_theme.dart';
import 'package:yesnoapp/presentation/providers/chat_provide.dart';
import 'package:yesnoapp/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_)=> ChatProvider())
      ],
      child: MaterialApp(
        title: 'YES NO APP',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).theme(),
        home: const ChatScreen()
      ),
    );
  }
}
