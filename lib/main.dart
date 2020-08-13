import 'package:animation/screens/DetailsScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DetailsScreen.id,
      routes: {
        DetailsScreen.id : (context) => DetailsScreen(),
      },
    );
  }
}