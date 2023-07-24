import 'dart:async';
import 'package:facebook/screens/MyHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds:2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MyHomePage()));
    });
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor:Colors.blue,
      statusBarColor:Colors.blue,
      statusBarIconBrightness:Brightness.light,
      systemNavigationBarIconBrightness:Brightness.light
    ));
    return Scaffold(
      backgroundColor:Colors.blue,
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: const [
          Center(child: Icon(Icons.facebook,color:Colors.white,size:100,))
        ],
      ),
    );
  }
}
