import 'package:flutter/material.dart';

var defaultBackground = Colors.grey[300];

var appBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var drawer = Drawer(
    backgroundColor: Colors.grey[300],
    child: Column(
      children: [
        DrawerHeader(
          child: Icon(
            Icons.favorite,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
          ),
          title: Text("A C C E U I L"),
        ),
        ListTile(
          leading: Icon(
            Icons.chat,
          ),
          title: Text("M E S S A G E"),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
          ),
          title: Text("S E T T I N G S"),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
          ),
          title: Text("L O G O U T"),
        ),
      ],
    ),);
