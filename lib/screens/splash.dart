import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_splash/screens/login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    goto();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: CircleAvatar(radius: 145,
          backgroundImage:
              AssetImage("assets/images/istockphoto-1151170153-612x612.jpg"),
        ),
      )),
    );
  }

  void goto() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        return login();
      }));
    });
  }
}
