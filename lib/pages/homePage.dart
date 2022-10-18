import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
  }


class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        
        title: const Text(
          'Linkispot.',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
        actions: const <Widget>[
          Icon(
            Icons.person_outline_rounded,
            size: 30,
          )
        ]
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Text("ok")
          ],
        ),
      ),
    );
  }
}