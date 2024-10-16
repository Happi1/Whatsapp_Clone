import 'package:flutter/material.dart';


class CallsScreens extends StatelessWidget {
  get icon => null;

  @override
  Widget build(BuildContext context) {
  return Scaffold (
    appBar: AppBar(
      title: Text('Calls'),
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