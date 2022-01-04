import 'package:flutter/material.dart';
import 'package:login/my_flutter_app.dart';

void main() => runApp(login());

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController txtUname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "./images/bg.jpg",
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 210,
                left: 26, //26
                child: Container(
                  height: 320,
                  //color: Colors.white,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        //offset: Offset(10, 7),
                        spreadRadius: 4,
                        blurRadius: 5,
                      )
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Positioned(
                left: 160,
                top: 180,
                child: Container(
                  height: 100,
                  //color: Colors.white,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("./images/pp.png"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blueGrey.shade900,
                      width: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 115,
                child: Text(
                  "My Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                  ),
                ),
              ),

              //username
              Positioned(
                top: 320,
                left: 70,
                child: Row(
                  children: [
                    Container(
                      child: Icon(MyFlutterApp.user),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 305,
                left: 120,
                width: 200,
                child: TextField(
                  controller: txtUname,
                  //maxLength: 50,
                  decoration: InputDecoration(
                    hintText: "UserName",
                  ),
                ),
              ),

              //password
              Positioned(
                top: 380,
                left: 70,
                child: Row(
                  children: [
                    Container(
                      child: Icon(MyFlutterApp.key),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 370,
                left: 120,
                width: 200,
                child: TextField(
                  controller: txtUname,
                  //maxLength: 50,
                  decoration: InputDecoration(
                    hintText: "Passoword",
                  ),
                  obscureText: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
