import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing_app/pages/details.dart';
import 'package:printing_app/pages/details_db.dart';
import 'package:printing_app/pages/landing.dart';
import 'package:printing_app/pages/pre_press.dart';
import 'package:printing_app/pages/press.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScreenUtilInit(
    designSize: const Size(1920, 1080),
    builder: () => MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FutureBuilder(
            future: Firebase.initializeApp(
              options: FirebaseOptions(
                  apiKey: '',
                  appId: '1:692570995685:android:d0cd8eaeb30b393e9b8d0c',
                  databaseURL: 'https://print-web-default-rtdb.firebaseio.com/',
                  messagingSenderId: '692570995685',
                  projectId: 'print-web'),
            ),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print('You have an error! ${snapshot.error.toString()}');
                return Text('Something went wrong');
              } else if (snapshot.hasData) {
                return Landing();
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
        '/details': (context) => Details(),
        '/pre_press': (context) => Pre_press(),
        '/press': (context) => Press(),
        '/details_db': (context) => Details_db(),
      },
    ),
  ));
}
