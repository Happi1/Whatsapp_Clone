import 'package:flutter/material.dart';
import 'package:whatsappapp/screens/Chat_screens.dart';
import 'package:whatsappapp/screens/Calls.dart';
import 'package:whatsappapp/screens/Community.dart';
import 'package:whatsappapp/screens/Status.dart';


class Conversation {
  final String contactName;
  final String lastMessage ;

  Conversation({
    required this.contactName,required this.lastMessage
  }) ;
}
//Main screens
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {

  // Index de l'onglet actuellement sélectionné
  int _selectedIndex = 0;

  // Fonction pour changer l'index de l'onglet sélectionné
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Retourne l'écran à afficher en fonction de l'index sélectionné
  Widget _getScreenForIndex(int index) {
    switch (index) {
      case 0:  return HomeScreen();        // Par exemple, écran de discussion ou d'accueil
      case 1:  return StatusScreen();      // Écran de statut
      case 2:  return CommunityScreen(); // Écran des communaute
      case 3:  return CallsScreens(); // Écran des appels
      default: return HomeScreen();        // Par défaut, on retourne l'écran de chat
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _getScreenForIndex(_selectedIndex),  // Affiche l'écran correspondant à l'index sélectionné
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message , color: Colors.black),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined ,color: Colors.black),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group , color: Colors.black),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call , color: Colors.black),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,  // Change l'onglet en fonction de l'index sélectionné
      ),
    );

  }
}




  //Écran pour les Chats
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  final List<Conversation> conversation = [
    Conversation (contactName : 'Alice',lastMessage : 'salut!'),
    Conversation (contactName : 'Bob',lastMessage : 'Comment ca va ?'),
    Conversation (contactName : 'Alice',lastMessage : 'A bientot !')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: conversation.length ,
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
            ),
            title: Text(conversation[index].contactName),
            subtitle: Text (conversation[index].lastMessage),
            onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatsScreen( conversation : conversation[index])))
          );
        },

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
      ),
    );
  }
}