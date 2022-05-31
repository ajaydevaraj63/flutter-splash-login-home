import 'package:flutter/material.dart';
import 'package:flutter_application_splash/screens/login.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('homepage'),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.exit_to_app_rounded))
        ],
      ),
      body: SafeArea(child: Center(child: Text("homescreen"))),
    );
  }

  void signout(BuildContext ctx1) {
    Navigator.of(ctx1).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
      return login();
    }), (route) => false);
  }
}
