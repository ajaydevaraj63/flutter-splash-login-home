import 'package:flutter/material.dart';
import 'package:flutter_application_splash/screens/homescreen.dart';
import 'package:flutter_application_splash/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _uscntrl = TextEditingController();

  final _pscntrl = TextEditingController();

  bool _isdata = true;

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Form(
      key: _key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/images/istockphoto-1151170153-612x612.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _uscntrl,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "username"),
              // validator: (_) {
              //   if (_isdata) {
              //     return 'error';
              //   } else {
              //     return null;
              //   }
              // }
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'value is empty';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _pscntrl,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "password"),
              // validator: (_) {
              //   if (_isdata) {
              //     return 'error';
              //   } else {
              //     return null;
              //   }
              // }
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'value is empty';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: ElevatedButton.icon(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    goto(context);
                  }
                },
                icon: Icon(Icons.check),
                label: Text("login")),
          )
        ],
      ),
    )));
  }

  Future<void> goto(BuildContext ctx1) async {
    final _username = _uscntrl.text;
    final _password = _pscntrl.text;
    if (_username == _password) {
      final _shrdprfs = await SharedPreferences.getInstance();
      _shrdprfs.setBool(SAVE_KEY_NAME, true);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((ctx) {
        return homescreen();
      })));
    } else {
      print("notmatch");
    }
  }
}
