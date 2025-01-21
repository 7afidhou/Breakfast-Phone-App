import 'package:flutter/material.dart';
import 'package:quizapp/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( //we commonly use const MaterialApp
     theme: ThemeData(fontFamily: 'Poppins'),
      home:const Home(), //home page in home.dart   
      debugShowCheckedModeBanner: false,// to remove the banner
    );
  }
}
