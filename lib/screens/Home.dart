import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffff),
        elevation: 0,
        leading: IconButton(
          color: Color(0xff5AC18E),
          iconSize: 50,
          icon: const Icon(Icons.arrow_circle_left),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              'This app is a virtual keyboard for sign language that help deaf people to comunicate with us  ',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            child: Text(
              'I Decided to name this app (Deaf Talk) to proof that deaf people can talk like us put in different way because we all different ',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            child: Image.asset("assets/thank you.png"),
          )
        ],
      ),
    );
  }
}
