import 'package:demo2_dashboard/layouts/center_alignment.dart';
import 'package:flutter/material.dart';

import 'views/pages/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindFit Clinic',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Mitr',
              )),
      home: Node_Layout_Center(),
      debugShowCheckedModeBanner: false,
    );
  }
}
