

import 'package:csb_chatbot_example/chat_page/chat_page.dart';
import 'package:csb_chatbot_example/keyword_response.dart';
import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final chatBotConfig = IkChatBotConfig(
      //SMTP Rating to your mail Settings
      ratingIconYes: const Icon(Icons.star),
      ratingIconNo: const Icon(Icons.star_border),
      ratingIconColor: Colors.black,
      ratingBackgroundColor: Colors.white,
      ratingButtonText: 'Submit Rating',
      thankyouText: 'Thanks for your rating!',
      ratingText: 'Rate your experience:',
      ratingTitle: 'Thank you for using the chatbot!',
      body: 'This is a test email sent from Flutter and Dart.',
      subject: 'Test Rating',
      recipient: 'recipient@example.com',
      isSecure: false,
      senderName: 'Your Name',
      smtpUsername: 'Your Email',
      smtpPassword: 'your password',
      smtpServer: 'stmp.gmail.com',
      smtpPort: 587,
      //Settings to your system Configurations
      sendIcon: const Icon(Icons.send, color: Colors.black),
      userIcon: const Icon(Icons.animation, color: Colors.white),
      botIcon: const Icon(Icons.android, color: Colors.white),
      botChatColor: Color.fromARGB(255, 104, 0, 101),
      delayBot: 100,
      closingTime: 1,
      delayResponse: 1,
      userChatColor: const Color.fromARGB(255, 103, 0, 0),
      waitingTime: 1,
      keywords: keywords,
      responses: responses,
      backgroundColor: Colors.white,
      backgroundImage:
      'https://i.pinimg.com/736x/d2/bf/d3/d2bfd3ea45910c01255ae022181148c4.jpg',
      backgroundAssetimage: "assets/bl.png",
      initialGreeting:
      "Hello! \nWelcome to IkChatBot.\nHow can I assist you today?",
      defaultResponse: "Sorry, I didn't understand your response.",
      inactivityMessage: "Is there anything else you need help with?",
      closingMessage: "This conversation will now close.",
      inputHint: 'Send a message',
      waitingText: 'Please wait...',
      useAsset: false,
    );
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(chatBotConfig: chatBotConfig)));
        },icon: Icon(Icons.chat,color: Colors.white,),),
      ),
    );
  }
}
