import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Status'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.camera_alt_outlined)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.miscellaneous_services_rounded)
          )
        ],


      ),
    );
  }
}