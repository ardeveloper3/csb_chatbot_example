

import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

class HomePage extends StatefulWidget {
  final IkChatBotConfig chatBotConfig;
  const HomePage({super.key, required this.chatBotConfig});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _chatIsOpened = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('ikChatBot Example'),
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {
        //   if(_chatIsOpened == false) {
        //     setState(() {
        //     _chatIsOpened == true;
        //     });
        //   }else {
        //     setState(() {
        //       _chatIsOpened == false;
        //     });
        //   }
        //
        // },
        // child: Icon(Icons.chat),),
        body: _chatIsOpened
            ? const Center(
          child: Text('Welcome to my app,'),
        )
            : ikchatbot(config: widget.chatBotConfig));
  }
}
