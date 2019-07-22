import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppStateKeeper();
  }
}
class AppStateKeeper extends State<App> {
  final bgColor = const Color(0xFF67E6DC);
  final barColor = const Color(0xFFE71C23);
  final butColor = const Color(0xFF2B2B52);
  final tex = const Text('YouThube');
  int myValue=0;

  Widget build(context){
    return MaterialApp(
    home: Scaffold(
      body: Center(
      child: Text('You have pressed this button $myValue times',
      style: TextStyle(fontSize: 20.0),
      ),
      ),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: tex,
        backgroundColor: barColor,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.fingerprint,
        size: 40.0,
        color: bgColor),
        backgroundColor: butColor,
        onPressed: (){
          setState(() {
           myValue+=1; 
          });
        
      }),
    )
  );
  }
}