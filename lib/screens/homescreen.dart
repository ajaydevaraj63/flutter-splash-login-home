import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('homepage'),),
      body: SafeArea(child: Center(child: Text("homescreen"))),
      
    );
  }
}