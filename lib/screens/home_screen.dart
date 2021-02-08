import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cabalonga_firebase/screens/theother_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Home Screen"),
      ),
      body: Stack(children: <Widget>[
        Container(
          //width: MediaQuery.of(context).size.width * 0.2,
          margin: EdgeInsets.fromLTRB(50, 100, 50, 300),
          alignment: Alignment(-1,-1),
          decoration: BoxDecoration(
            
            image: DecorationImage(
              
              image: AssetImage("assets/human.jpg"),
              //fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0, 0.4),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Theother()),
                );
              },
              child: Text("Next Screen")),
        ),
        Container(
            alignment: Alignment(0, 0.5),
            child: ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text("Sign out"),
            )),
        Container()
      ]),
      /* color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You are in the Home Screen", style: TextStyle(fontSize: 18),),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Thirdy()),);
            
          },
          child: Text("Next Screen")),

         

          
        ],

      ),*/
    );
  }
}
