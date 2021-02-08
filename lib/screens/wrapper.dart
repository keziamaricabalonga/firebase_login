import 'package:cabalonga_firebase/models/user.dart';
import 'package:cabalonga_firebase/screens/home_screen.dart';
import 'package:cabalonga_firebase/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //TODO if no user data signin, home_screen otherwise
    if(user == null) {
      return SignInScreen();
    } else {
      return HomeScreen();
    }
  }
}