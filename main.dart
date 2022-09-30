import 'package:flutter/material.dart';
import 'package:notekeeper_app/screens/NoteList.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Keeper',
      theme: ThemeData(
        primaryColor: Colors.purple
      ),
      home: noteList()
    );
  }
}