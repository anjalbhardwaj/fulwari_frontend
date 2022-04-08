import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class VerifySignupEmail extends StatefulWidget {
  static const routeName = 'verifysignupemail';

  const VerifySignupEmail({Key? key}) : super(key: key);

  @override
  _VerifySignupEmailState createState() => _VerifySignupEmailState();
}

class _VerifySignupEmailState extends State<VerifySignupEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Just Testing Ram Ram'),
      ),
    );
  }
}
