// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:newbarcode2/adhelper.dart';

// ignore: camel_case_types
class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  State<info> createState() => _infoState();
}

// ignore: camel_case_types
class _infoState extends State<info> {
  // ignore: annotate_overrides
  void initState() {
    // ignore: todo
    // TODO: implement initState
    AdHelper3.myBanner.load();
    super.initState();
  }

  final AdWidget adWidget3 = AdWidget(ad: AdHelper3.myBanner);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        
        bottomNavigationBar: Container(
          color: Colors.blue,
          height: 50,
          child: adWidget3,
        ),
        // ignore: duplicate_ignore
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('   About'),
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue[200],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: Colors.indigo, width: 10)),
                      child: Image.asset('images/image1.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 10),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white),
                  child: Text(
                    '\n\nThis is an application that took days and months of fatigue. I hope you like it.\n \nbest regards.\nprogrammer:\nAhmed Mohammed',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
