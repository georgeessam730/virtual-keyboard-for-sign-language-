import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firestore_search/firestore_search.dart';
import 'package:flutter/material.dart';

import '../word.dart';
import 'Resultpage.dart';

class Fromlangtosign extends StatefulWidget {
  const Fromlangtosign({Key? key}) : super(key: key);

  @override
  State<Fromlangtosign> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Fromlangtosign> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
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
            "From char/word to signs",
            style: TextStyle(color: Colors.black),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
        body: Container(
          child: FirestoreSearchScaffold(
            appBarBackgroundColor: Colors.white,
            firestoreCollectionName: 'mimix',
            searchBy: 'mean',
            scaffoldBody: Center(),
            dataListFromSnapshot: DataModel().dataListFromSnapshot,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final List<DataModel>? dataList = snapshot.data;
                if (dataList!.isEmpty) {
                  return const Center(
                    child: Text('No Results Returned'),
                  );
                }
                return ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      final DataModel data = dataList[index];

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Resultpage(
                                          dataModel: dataList[index])));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${data.word}',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              }

              if (snapshot.connectionState == ConnectionState.done) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('No Results Returned'),
                  );
                }
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ));
  }
}
