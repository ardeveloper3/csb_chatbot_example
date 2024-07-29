import 'package:csb_chatbot_example/chat_page/chat_page.dart';
import 'package:csb_chatbot_example/keyword_response.dart';
import 'package:csb_chatbot_example/page1.dart';
import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:PageOne(),
    );
  }
}


