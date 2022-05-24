import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/istockphoto-1151170153-612x612.jpg"),
          ),
        ),Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(decoration: InputDecoration( border: OutlineInputBorder(),hintText: "username"),),
        )
      ,Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(  decoration: InputDecoration( border: OutlineInputBorder(),hintText: "password"),),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("login")),
      )
   ],
    )));
  }
}
