import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens.dart';
import 'login_register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
            stops: [0, 0.5],
            colors: [Color(0xFF385ff1), Color(0xFF7414d8)],
          ),
        ),
        child: ListView(
          children: <Widget>[
            LoginLogo(),
            LoginForm(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      RaisedButton(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginRegister()),
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              color: Colors.grey,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90)
                    ),
                    child: Text(
                      'Forgot?',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
