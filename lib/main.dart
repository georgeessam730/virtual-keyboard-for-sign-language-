import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/screens/startscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    name: 'any',
    options: const FirebaseOptions(
      apiKey:
          ' AAAA9uCjaow:APA91bFsE4CLi_PHo3VpXFPpgLozjAiMKpIaYmcGG61hZDk9UonbM7r4NC4SHK1zjMNUz6PxUVVw5vIoi29TbDtK7tw8IlExny1Yf8T74ser_injMhnxfmJUKcE_UXcQMvw2aBEag0MS ',
      appId: '1:1060330760844:android:6ede3b9be2dd98bc30e9a9',
      messagingSenderId: '1060330760844',
      projectId: 'gpro-fc499',
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'deaftalk',
      home: startscreen(),
    );
  }
}
