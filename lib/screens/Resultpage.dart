import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../word.dart';

class Resultpage extends StatelessWidget {
  Resultpage({Key? key, this.dataModel}) : super(key: key);
  DataModel? dataModel;

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
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Color.fromARGB(255, 255, 255, 255).withOpacity(.4),
                  Color.fromARGB(255, 255, 252, 252).withOpacity(.2),
                ])),
            alignment: Alignment.topCenter,
            child: Text(
              dataModel!.word!,
              style: const TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Image.network(
              dataModel!.url!,
              height: 350,
              width: 350,
            ),
          )
        ],
      ),
    );
  }
}
