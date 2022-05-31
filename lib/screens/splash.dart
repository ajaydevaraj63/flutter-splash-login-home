import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_splash/screens/homescreen.dart';
import 'package:flutter_application_splash/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    checklogin();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: CircleAvatar(
          radius: 145,
          backgroundImage:
              AssetImage("assets/images/istockphoto-1151170153-612x612.jpg"),
        ),
      )),
    );
  }

  Future<void> goto() async {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return login();
      }));
    });
  }

  Future<void> checklogin() async {
    final _shprfs = await SharedPreferences.getInstance();
    final _userLoggedIn = _shprfs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      goto();
    }
    else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return homescreen();
      }));

    }
  }
}
