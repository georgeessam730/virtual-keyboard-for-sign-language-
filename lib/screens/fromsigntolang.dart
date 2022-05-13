import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class testclass2 extends StatefulWidget {
  const testclass2({Key? key}) : super(key: key);

  @override
  State<testclass2> createState() => _testclass2State();
}

class _testclass2State extends State<testclass2> {
  final _firestore = FirebaseFirestore.instance;
  String? sign;
  var value1 = '';
  var value2 = '';
  final Stream<QuerySnapshot> gradpro =
      FirebaseFirestore.instance.collection('gradpro').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff),
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
          "From Signs To characters",
          style: TextStyle(color: Colors.black),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Color.fromARGB(255, 255, 255, 255).withOpacity(.4),
                        Color.fromARGB(255, 255, 252, 252).withOpacity(.2),
                      ])),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                              child: const Text(
                                'clear',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal),
                              ),
                              onPressed: () {
                                setState(() {
                                  value1 = value2;
                                });
                              }),
                        ),
                        Container(
                          child: Text(
                            value1,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign1.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign1'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign2.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign2'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign3.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign3'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign4.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign4'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign5.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign5'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign6.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign6'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign7.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign7'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign8.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign8'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign9.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign9'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign10.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign10'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign11.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign11'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign12.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign12'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign13.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign13'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign14.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign14'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign15.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign15'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign16.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign16'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign17.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign17'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign18.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign18'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign19.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign19'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign20.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign20'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign21.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign21'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign22.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign22'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign23.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign23'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign24.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign24'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign25.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign25'];
                          });
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                        child: Image(image: AssetImage('assets/sign26.jpg')),
                        onPressed: () async {
                          DocumentSnapshot variable = await FirebaseFirestore
                              .instance
                              .collection('gradpro')
                              .doc('signs')
                              .get();

                          setState(() {
                            value1 += variable['sign26'];
                          });
                        }),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
