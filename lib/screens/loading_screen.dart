import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
 void getLocation () async {
   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
   print(position);
 }

//  void getData()async{
//     if (response)
//  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           getLocation();
          },
          child:const Text('Get Location'),
        ),
      ),
    );
  }
}
