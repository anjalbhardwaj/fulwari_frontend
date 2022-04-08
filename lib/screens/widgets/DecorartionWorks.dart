import 'package:flutter/material.dart';

class DecorationWorks extends StatefulWidget {
  const DecorationWorks({Key? key}) : super(key: key);
  @override
  _DecorationWorksState createState() => _DecorationWorksState();
}

class _DecorationWorksState extends State<DecorationWorks> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Decoration Works Page',
      style: TextStyle(
        fontSize: 35,
      ),
    );
  }
}
