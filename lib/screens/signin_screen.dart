import 'package:cabalonga_firebase/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatefulWidget {
  //const SignInScreen{Key key}) : super(key: key);
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
var textVisible = false;

void dispose() {
  emailController.dispose();
  passwordController.dispose();
  //super.dispose();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _auth = AuthService();
  TextStyle style = TextStyle(
      fontFamily: 'Inter', fontSize: 20.0, fontWeight: FontWeight.bold);
  OutlineInputBorder outlineBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(32.0));
  @override
  Widget build(BuildContext context) {
    //Email TF template initialize
    final emailField = TextField(
        controller: emailController,
        obscureText: false,
        style: style,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            fillColor: Color(0x77ffffff),
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Email",));
    //password TF template initialize
    final passwordField = TextField(
        controller: passwordController,
        obscureText: true,
        style: style,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            fillColor: Color(0x77ffffff),
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Password",
    ));
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            //alignment: Alignment(0,0),
            margin:EdgeInsets.fromLTRB(70, 250, 70, 250),
            /*width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.width * 1,
            color: Colors.white,*/
            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.rectangle, 
               borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    topRight:  Radius.circular(30.0),
                    bottomLeft: Radius.circular(30))
            ),
          ),
          Container(
            //color: Colors.red,
            alignment: Alignment(0, -0.18),
            width: MediaQuery.of(context).size.width * 1,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: emailField),
          ),
          Container(
            //color: Colors.red,
            alignment: Alignment(0, 0),
            width: MediaQuery.of(context).size.width * 1,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: passwordField),
          ),
          Container(
            alignment: Alignment(0,0.2),
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
              elevation: 5,
              focusColor: Colors.black,
              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
              color: Colors.purple,
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print("Error Signing in");
                } else {
                  print("Signed in");
                }
              },
              child: Text("SIGN IN", style: style.copyWith(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
            ),
          ),
         /* MaterialButton(
            elevation: 5,
            //borderRadius: BorderRadius.circular(30),
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            color: Color(0xff479bb3),
            onPressed: () async {
              dynamic result = await _auth.signInAnon();
              if (result == null) {
                print("Error Signing in");
              } else {
                print("Signed in");
              }
            },
            child: Text("Signin"),
          ),*/
          /* Container(
            /*width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.width * 1.5,*/
            // color: Colors.red,
            child: Center(
                child: new Stack(children: <Widget>[
              new Column(children: <Widget>[
                Container(

                    //height: 200,alignment: Alignment(1, 0),
                    // child: Text('jelasd')
                    ),
                //===================================================
                FractionallySizedBox(
                  alignment: Alignment.bottomLeft,
                  widthFactor: 0.8,
                  child: passwordField,
                ),
                //===================================================
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: emailField,
                ),
                //===================================================
              ])
            ])),
            /*ElevatedButton(

                onPressed: () async {
                  dynamic result = await _auth.signInAnon();
                  if (result == null) {
                    print("Error Signing in");
                  } else {
                    print("Signed in");
                  }
                },
                child: Text("Signin"),
              ),*/
          ),*/
        ],
      ),
    );
  }
}
