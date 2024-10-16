import 'package:flutter/material.dart';
import 'package:whatsappapp/main.dart';

import 'package:whatsappapp/screens/home.dart';
import 'package:whatsappapp/screens/Chat_screens.dart' ;
import 'package:whatsappapp/screens/Status.dart';
import 'package:whatsappapp/screens/Community.dart';
import 'package:whatsappapp/screens/Calls.dart';

class Routes {
  static Map <String,WidgetBuilder> getRoutes(){
    return <String, WidgetBuilder>{
     '/': (context) => HomeScreen(),
      '/chat': (context) => ChatsScreen(conversation:),
      '/status': (context) => StatusScreen(),
      '/community': (context) => CommunityScreen(),
      '/call': (context) => CallsScreen(),

    };
  }
}

