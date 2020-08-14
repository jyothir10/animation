import 'package:animation/screens/DetailsScreen.dart';
import 'package:animation/screens/cartScreen.dart';
import 'package:animation/screens/homeScreen.dart';
import 'package:animation/screens/pageView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PageViewScreen.id,
      routes: {
        DetailsScreen.id : (context) => DetailsScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        CartScreen.id: (context) => CartScreen(),
        PageViewScreen.id: (context) => PageViewScreen(),
      },
    );
  }
}