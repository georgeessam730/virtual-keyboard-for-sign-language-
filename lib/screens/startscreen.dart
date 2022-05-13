import 'package:flutter/material.dart';
import 'package:flutter_application_14/screens/loginpage.dart';
import 'package:flutter_application_14/screens/signupscreen.dart';
import 'package:flutter_application_14/screens/spicfy.dart';

class startscreen extends StatefulWidget {
  const startscreen({Key? key}) : super(key: key);

  @override
  State<startscreen> createState() => _startscreenState();
}

class _startscreenState extends State<startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 63,
          ),
          //logo container
          Container(
            child: Image.asset(
              "assets/DEAF TALK logo3.png",
              height: 162.17,
              width: 160.0,
            ),
            padding: const EdgeInsets.all(8.0),
            width: 200,
            height: 200,
            decoration: const BoxDecoration(shape: BoxShape.circle),
          ),
          const SizedBox(
            height: 30,
          ),
          //name container

          const SizedBox(
            height: 100,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 150,
                  child: RaisedButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 30),
                      ),
                      color: const Color(0xff5AC18E),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }),
                ),
                const SizedBox(
                  width: 60,
                ),
                Container(
                  height: 70,
                  width: 150,
                  child: RaisedButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              topLeft: Radius.circular(40))),
                      child: Text(
                        'Signup',
                        style: TextStyle(fontSize: 30),
                      ),
                      color: const Color(0xff5AC18E),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signupscreen()));
                      }),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          //skip button container
          Container(
            width: 161,
            height: 71,
            child: RaisedButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                color: const Color(0xff5AC18E),
                child: Text(
                  'Skip For Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => specify()));
                }),
          ),
          //login and sign up row
        ],
      ),
    );
  }
}
