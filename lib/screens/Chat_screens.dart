import 'package:flutter/material.dart';
import 'package:whatsappapp/screens/home.dart';

//Écran pour les Chats
class ChatsScreen extends StatelessWidget {

  final Conversation conversation ;
  ChatsScreen({required this.conversation});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: Text(conversation.contactName),
       ),
       body: Column(
         children: [
           Expanded(
             child: ListView.builder(
              itemCount: 20 , // nombre de message
              itemBuilder: (context , index){
                return ListTile(
                  title: Align(
                    alignment: index % 2 == 0
                     ? Alignment.centerLeft: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.grey[300] : Colors.green[200],
                         borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Message $index'),
                    ),

                  ),

                );
              }
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Expanded(
                   child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Tapez votre message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                   ),
                 ),
               ],
             ),
           ) ,
         ],
       ),
    );
  }
}


