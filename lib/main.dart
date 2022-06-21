import 'package:flutter/material.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'homescreen.dart';




void main(){

  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();



  runApp(MyApp());

}
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      // ignore: prefer_const_constructors
      home: Homescreen(),
    );
  }
}