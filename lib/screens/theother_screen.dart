import 'package:flutter/material.dart';

class Theother extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("The other screen"),
      ),
       body: Center(
        
          child: Text('Hello world!'),
        
      ),
    );
  }
}