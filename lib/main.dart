import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing_app/pages/details.dart';
import 'package:printing_app/pages/details_db.dart';
import 'package:printing_app/pages/landing.dart';
import 'package:printing_app/pages/pre_press.dart';
import 'package:printing_app/pages/press.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //final appDirectory = await getApplicationSupportDirectory();
  Hive.init('F:/flutter_code/print');
  runApp(ScreenUtilInit(
    designSize: const Size(1920, 1080),
    builder: () => MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Landing(),
        //'/details': (context) => Details(),
        // '/pre_press': (context) => Pre_press(),
        // '/press': (context) => Press(),
        '/details': (context) => FutureBuilder(
            future: Hive.openBox('details'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return Details();
                }
              } else {
                return const Scaffold();
              }
            }),
        '/pre_press': (context) => FutureBuilder(
            future: Hive.openBox('pre_press'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return Pre_press();
                }
              } else {
                return const Scaffold();
              }
            }),
        '/details_db': (context) => FutureBuilder(
            future: Hive.openBox('details'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return Details_db();
                }
              } else {
                return const Scaffold();
              }
            }),
        '/press': (context) => FutureBuilder(
            future: Hive.openBox('press'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return Press();
                }
              } else {
                return const Scaffold();
              }
            }),
      },
    ),
  ));
}
