import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);
  final _uscntrl = TextEditingController();
  final _pscntrl = TextEditingController();

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
            backgroundImage:
                AssetImage("assets/images/istockphoto-1151170153-612x612.jpg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _uscntrl,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "username"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _pscntrl,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "password"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: ElevatedButton.icon(
              onPressed: () {
                goto(context);
              },
              icon: Icon(Icons.check),
              label: Text("login")),
        )
      ],
    )));
  }

  void goto(BuildContext ctx) {
    final _username = _uscntrl.text;
    final _password = _pscntrl.text;
    if (_username == _password) {
      //go home
    } else {
      //snackbar need build context
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(behavior: SnackBarBehavior.floating,backgroundColor: Colors.red,margin: EdgeInsets.all(2),
        content: Text('invalid user name and password'),
      ));
    }
  }
}
