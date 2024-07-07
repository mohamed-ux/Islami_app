
import 'package:flutter/material.dart';
import 'package:islamic_app/homeScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:HomeScreen.routeName ,
      routes: {
HomeScreen.routeName:(context)=> HomeScreen()
      },
    );
  }
}
