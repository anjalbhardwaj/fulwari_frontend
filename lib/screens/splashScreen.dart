import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:pushp/controller/auth.dart';
import 'package:pushp/screens/home/homepage.dart';
import 'package:pushp/screens/searchBrowse.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => SchedulerBinding.instance!.addPostFrameCallback(
        (_) {
          // Navigator.of(context).pushNamedAndRemoveUntil(
          //     HomePage.routeName, (Route<dynamic> route) => false);
          Navigator.of(context).pushNamedAndRemoveUntil(
              SearchBrowse.routeName, (Route<dynamic> route) => false);
        },
      ),
    );
  }

  appInitiateInfo(dynamic _d) async {
    final _auth = Provider.of<AuthModel>(context, listen: false);
    await _auth.deviceResolutionInfo(_d);
  }

  @override
  Widget build(BuildContext context) {
    print('Splash screen works--->');
    print('Is this workinh');
    var devicData = {
      'orientationWidth': MediaQuery.of(context).size.width,
      'orientationHeight': MediaQuery.of(context).size.height,
      'pOrL': Orientation.portrait == true
          ? Orientation.portrait
          : Orientation.landscape
    };
    print(devicData);
    print('MediaQuery.of(context).size.width');
    print(MediaQuery.of(context).size.width);
    print('MediaQuery.of(context).size.height');
    print(MediaQuery.of(context).size.height);
    appInitiateInfo(devicData);
    return Scaffold(body: OrientationBuilder(
      builder: (context, orientation) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xff7c94b6),
            image: DecorationImage(
              image:
                  // orientation == Orientation.portrait
                  //     ? const AssetImage("assets/images/r1.jpeg")
                  //     :
                  AssetImage("assets/images/r3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 5,
              backgroundColor: Colors.white,
              valueColor:
                  AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 10, 9, 9)),
              // value: _progress,
            ),
          ), /* add child content here */
        );
      },
    ));
  }
}
