import 'package:flutter/material.dart';
import 'mainScreen.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 5), (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.network(
            "https://www.static-contents.youth4work.com/university/Documents/Colleges/collegeLogo/963.png?v=20190222153623",
            height: 90,
            width: 80,
          ),
        ),
        const Text("Srinivas Institute of Technology")
      ]),
    );
  }
}
